class HomesController < ApplicationController
  include Tubesock::Hijack
  include ActionController::Live
  def index
  end

  def test

  end

  def test_sse

  end

  # 服务器发送，看股票相关的的推送信息
  # 尝试了多种方法， message 就是不执行
  def sse
    response.headers['Content-Type'] = 'text/event-stream'
    response.charset = 'utf-8'
    # response.headers['Access-Control-Allow-Origin'] = 'http://0.0.0.0:2000'

    # response.stream.write "data:现在时间: #{Time.now.to_i}\r\n\r\n\r\n\r\n"

    # sse = SSE.new(response.stream, retry: 300, event: "message")
    # sse.write({ name: 'Test'})

    # render nothing: true
    # response.body = "data: 现在时间 #{Time.now.to_i}"
    render text: "data: 现在时间 #{Time.now.to_i}\r\n\r\n"
  rescue IOError
    logger.info 'stream Closed'
  ensure
    # response.stream.close
  end

  # 服务器如何长久的维持 http 链接
  def test_comet
    mock_data = {
        success: 'ok',
        text: "尝试长轮训#{Time.now.to_i}"
    }

    sleep(1)

    render json: mock_data.to_json
  end

  def chat
    hijack do |tubesock|
      tubesock.onopen do
        tubesock.send_data "Hello, friend"
      end

      tubesock.onmessage do |data|
        tubesock.send_data "You said: #{data}"
      end
    end
  end

  def tubesock
    hijack do |tubesock|
      tubesock.onopen do
        @@sockets << tubesock
        tubesock.send_data({success: true, message: "Hello Client"}.to_json)
      end

      tubesock.onmessage do |data|
        begin
          Rails.logger.info data.class
          Rails.logger.info data
          status = Status.create!(JSON.parse(data))
          @@sockets.each do |socket|
            socket.send_data({success: true}.merge(status.attributes).to_json)
          end
        rescue => e
          error_message = {success: false, error: e.message}.to_json
          tubesock.send_data error_message
        end
      end

      tubesock.onclose do
        @@sockets.delete(tubesock)
      end
    end
  end

  def weui
    
  end
end
