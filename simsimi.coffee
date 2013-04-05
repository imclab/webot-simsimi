# http = require 'http'
request = require 'request'

debug = require 'debug'
log = debug 'webot-simsimi:log'
verbose = debug 'webot-simsimi:verbose'
error = debug 'webot-simsimi:error'

module.exports = exports = (text, cb) ->
  verbose "Client said: #{text}"
  text = text.trim()

  if not text
    cb '叫我干嘛'
  else
    request {
      uri: 'http://xiaojiji.duapp.com/simsimi.php'
      qs:
        key: text
    }, (err, res, body) ->
      if err
        error "Simsimi error: #{JSON.stringify err}"
        cb '呵呵'
      else
        if body
          verbose "Simsimi replied: #{body}"
          cb body
        else
          cb '呵呵'
