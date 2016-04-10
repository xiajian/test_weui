HomesController = Paloma.controller 'Homes'

HomesController::index = ->
  # 基于 comet http 的长链接的,最关键的就是递归调用
  test_coment = ->
    $.getJSON '/homes/test_comet', {}, (response) ->
      setTimeout ->
        console.log response
        $('.test').append(response.text + '<br>')
        test_coment()
      , 100

  test_coment()

HomesController::test = ->
  ws = new WebSocket("ws://localhost:2000/")
  ws.onopen = ->
    ws.send("Hello")

  ws.onmessage = ->
    alert(e.data)

  ws.onclose = ->
    alert 'colsed'


HomesController::test_sse = ->
  source = new EventSource('http://localhost:2000/homes/sse')

  listener = (event) ->
    div = $(".test")
    type = event.type
    div.append(type + ": " + ( if type is "message" then event.data else source.url) + '<br>')

  source.onopen = listener
  #  console.log '链接已建立', this.readyState

  source.addEventListener 'message', listener

  source.onmessage = (event) ->
    console.log '从服务器获取数据', event.data

  source.onerror = ->
    # console.log 'error'

