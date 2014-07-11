# Commands:
#  get <no> <answer> - 問題に解答する

module.exports = (robot) ->
  robot.hear /ans (.*) (.*)$/i, (msg) ->
    num = msg.match[1]
    answer = msg.match[2]

    if robot.brain.data[num]
      data = robot.brain.data[num]
    else

    if answer == data[1]
      msg.send "正解！！"
    else
      msg.send "ハズレ！ 正解は#{data[1]}"
