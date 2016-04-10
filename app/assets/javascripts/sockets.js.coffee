SocketsController = Paloma.controller 'Sockets'

SocketsController::index = ->
  alert 2

SocketsController::echo = ->
  alert 111