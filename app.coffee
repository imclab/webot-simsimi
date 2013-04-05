express = require 'express'
webot = require 'weixin-robot'

debug = require 'debug'
log = debug 'webot-simsimi:log'
verbose = debug 'webot-simsimi:verbose'
error = debug 'webot-simsimi:error'

# start service
app = express()

WX_TOKEN = 'simsimi'

webot.watch app, WX_TOKEN

# enable proxy
app.enable 'trust proxy'

# load route rules
require('./rules')(webot)

PORT = process.env.VCAP_APP_PORT or 3000
app.listen PORT, ->
  log "Listening on #{PORT}"

if not process.env.DEBUG
  console.log 'Set env variable `DEBUG=webot-simsimi:*` to display debug info.'
