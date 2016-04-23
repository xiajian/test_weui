class Image
  mattr_accessor :bucket
  self.bucket = 'test-for-xiajian-20160421'

  mattr_accessor :callback_url
  self.callback_url = 'http://xuewb.com'

  mattr_accessor :callback_body
  self.callback_body = 'filename=$(fname)&filesize=$(fsize)'

  class << self

    # 上传文件, 如何获取图片的地址链接
    def upload_file(key, file)
      code, result, response_headers = Qiniu::Storage.upload_with_token_2(
          uptoken,
          file,
          key
      )

      puts code

      puts result

      puts response_headers
    end

    def download(key)

    end

    def image_url(key)
      domains = %w(7xt7sa.com1.z0.glb.clouddn.com 7xt7sa.com2.z0.glb.clouddn.com 7xt7sa.com2.z0.glb.qiniucdn.com)

      "http://#{domains}/#{key}"
    end

    # 获取文件的信息
    def get_info(key)
      code, result, response_headers = Qiniu::Storage.stat(
          bucket,     # 存储空间
          key         # 资源名
      )
      puts code
      puts result
      puts response_headers
    end

    def move(source_key, dst_bucket, dst_key)
      #移动文件
      code, result, response_headers = Qiniu::Storage.move(
          bucket,     # 源存储空间
          source_key,        # 源资源名
          dst_bucket,     # 目标存储空间
          dst_key         # 目标资源名
      )
      
      puts code
      puts result
      puts response_headers
    end

    def copy(source_key, dst_bucket, dst_key)
      #移动文件
      code, result, response_headers = Qiniu::Storage.copy(
          bucket,     # 源存储空间
          source_key,        # 源资源名
          dst_bucket,     # 目标存储空间
          dst_key         # 目标资源名
      )

      puts code
      puts result
      puts response_headers
    end

    def delete(key)
      code, result, response_headers = Qiniu::Storage.delete(
          bucket,     # 存储空间
          key         # 资源名
      )

      puts code
      puts result
      puts response_headers
    end

    private

    def uptoken(key, options = {} )
      options[:expires] ||= 3000
      options[:callback] ||= false

      put_policy = Qiniu::Auth::PutPolicy.new(
          bucket,  # 存储空间
          key,     # 最终资源名，可省略，即缺省为“创建”语义，设置为nil为普通上传
          options[:expires]     #token过期时间，默认为3600s
      )

      if options[:callback]
        put_policy.callback_url = callback_url
        put_policy.callback_body = callback_body
      end

      Qiniu::Auth.generate_uptoken(put_policy)
    end
  end
end