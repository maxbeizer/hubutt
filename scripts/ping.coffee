# Description:
#   Tests if Hubot is responding to pings
#
# Commands:
#   hubot ping
#   hubot echo <phrase> - Echos <phrase>
#   hubot time - Gets the current time
#   hubot die - Does a bad acting job

spawn = require('child_process').spawn
_ = require('lodash')

DEFAULT_LISTENER_OPTIONS = {
  risk: "miniscule",
  owner: "github/deploy-team",
  owningDirector: "kelseyq"
}

listenerOptions = (opts = {})->
  _.merge(DEFAULT_LISTENER_OPTIONS, opts)

# Utility commands surrounding Hubot uptime.
module.exports = (robot) ->
  robot.respond /PING$/i, listenerOptions(id: "ping"), (msg) ->
    msg.send "PONG"

  robot.respond /MARCO$/i, listenerOptions(id: "marco"), (msg) ->
    msg.send "POLO"

  robot.respond /ECHO (.*)$/i, listenerOptions(id: "ping.echo"), (msg) ->
    msg.send msg.match[1].replace(/\\n/g, "\n")

  robot.respond /TIME$/i, listenerOptions(id: "ping.time"), (msg) ->
    msg.send "Server time is: #{new Date()}"
