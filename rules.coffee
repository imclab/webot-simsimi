simsimi = require './simsimi'

debug = require 'debug'
log = debug 'webot-simsimi:log'
verbose = debug 'webot-simsimi:verbose'
error = debug 'webot-simsimi:error'

# init router
module.exports = exports = (webot) ->
  # handle subscribe event
  webot.set
    name: 'hello help'
    pattern: (info) ->
      info.event == 'subscribe'
    handler: -> '感谢你收听小黄鸡，请尽情调戏我吧~'

  webot.set
    name: 'simsimi bot'
    pattern: -> true
    handler: (info, next) ->
      simsimi info.text, (reply) -> next null, reply
