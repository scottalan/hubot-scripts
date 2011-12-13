# Test script for irc.
#
# hubot greeting.
#
# (hi|hello) - say hi to your butler

module.exports = (robot) ->
  robot.respond /hi|hello/i, (msg) ->
    msg.send "Howdy!"