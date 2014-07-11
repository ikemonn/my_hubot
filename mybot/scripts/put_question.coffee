# Commands:
#  @hubot q <num> - num数分の問題を出題する

module.exports = (robot) ->
  robot.hear /q (.*)$/i, (msg) ->
    num = msg.match[1]
    console.log num
    msg.send "hoge"
    console.log robot.brain.data.kanken
