# Description:
#   Says hello
#
# Commands:
#   hubot ohai - prompts hubot to say hi back

# Utility commands surrounding Hubot uptime.
module.exports = (robot) ->
  robot.respond /ohai$/i, (msg) ->
    msg.send "hello"
