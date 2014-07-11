# Commands:
#  get <no> <answer> - 問題に解答する

module.exports = (robot) ->
  robot.hear /ans (.*) (.*)$/i, (msg) ->
    num = msg.match[1]
    user_answer = msg.match[2]
    # console.log  robot.brain.data.kanken[1]["problem"]
    # msg.send robot.brain.data.kanken[1]["problem"]
    # msg.send robot.brain.data.kanken[num]["problem"]
    console.log robot.brain.data.kanken[num]?
    if robot.brain.data.kanken[num]
      answer =  robot.brain.data.kanken[num]["problem"]
    else
      msg.send "その問題は登録されていません。"
      return


    if answer == user_answer
      robot.brain.data.kanken[num]["correct"]++
      msg.send "正解！！"
    else
      msg.send "ハズレ！ 正解は#{answer}"

    robot.brain.data.kanken[num]["all_count"]++
    robot.brain.save()


    msg.send "この問題は、#{robot.brain.data.kanken[num]["correct"]}/#{robot.brain.data.kanken[num]["all_count"]}正解です！"
