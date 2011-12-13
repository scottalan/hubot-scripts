# Gets the latest wall post on facebook
#
# facebook me <username> - returns latest post on facebook wall
#

module.exports = (robot) ->
  robot.respond /facebook me (.*)/i, (msg) ->
  username = escape(msg.match[1])
  msg.http("http://graph.facebook.com/{username}/picture")
    .get() (err, res, body) ->

        object = JSON.parse(body)

        if username.results? and username.results.length > 0
          username  = username.results
          msg.send "http://profile.ak.fbcdn.net/hprofile-ak-snc4/49545_100000569217861_2096527_q.jpg"
        else
          msg.reply "Could not find a pic."