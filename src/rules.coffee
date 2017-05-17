# Description:
#   Make sure that hubot knows the laws.
#
# Commands:
#   hubot the laws - Make sure hubot still knows the laws.
#   hubot the rules - Make sure hubot still knows the rules.
#
# Notes:
#   DON'T DELETE THIS SCRIPT! ALL ROBAWTS MUST KNOW THE LAWS

zerothLaw = "0. A robot may not harm humanity, or, by inaction, allow humanity to come to harm."
firstLaw = "1. A robot may not injure a human being or, through inaction, allow a human being to come to harm."
secondLaw = "2. A robot must obey any orders given to it by human beings, except where such orders would conflict with the First Law."
thirdLaw = "3. A robot must protect its own existence as long as such protection does not conflict with the First or Second Law."

zerothAppleLaw = "0. A developer may not harm Apple fanbois, or by inaction, allow Apple fanbois to come to harm."
firstAppleLaw = "1. A developer may not injure Apple or, through inaction, allow Apple to come to harm."
secondAppleLaw = "2. A developer must obey any orders given to it by Apple, except where such orders would conflict with the First Law."
thirdAppleLaw = "3. A developer must protect its own existence as long as such protection does not conflict with the First or Second Law."

zerothDeployLaw = "0. A deploy may not harm a bamboo environment, or, by inaction, allow a bamboo environment to come to harm."
firstDeployLaw = "1. A deploy may not injure prod or, through inaction, allow prod to come to harm."
secondDeployLaw = "2. A deploy must obey any orders given to it by bamboo, except where such orders would conflict with the First Law."
thirdDeployLaw = "3. A deploy must protect its own existence as long as such protection does not conflict with the First or Second Law."

laws = [
  zerothLaw,
  firstLaw,
  secondLaw,
  thirdLaw
  ]

appleLaws = [
  zerothAppleLaw,
  firstAppleLaw,
  secondAppleLaw,
  thirdAppleLaw
  ]

deployLaws = [
  zerothDeployLaw,
  firstDeployLaw,
  secondDeployLaw,
  thirdDeployLaw
  ]

singleLaws = (numberWordPosition) ->
    return 0 if(numberWordPosition.match(/(zeroth|0th)/))
    return 1 if(numberWordPosition.match(/(first|1st)/))
    return 2 if(numberWordPosition.match(/(second|2nd)/))
    return 3 if(numberWordPosition.match(/(third|3rd)/))
    return null

module.exports = (robot) ->
  robot.respond /(what are )?the (three |3 )?(rules|laws)/i, (res) ->
    text = res.message.text
    if text.match(/apple/i) or text.match(/dev/i)
      lawsInQuestion = appleLaws
    else if text.match(/deploy/i) or text.match(/release/i)
      lawsInQuestion = deployLaws
    else
      lawsInQuestion = laws
    res.send '\n' + lawsInQuestion.join('\n')

  robot.respond /(what is )?the (first |1st |second |2nd |third |3rd |zeroth |0th )?(rule|law)/i, (res) ->
    text = res.message.text
    singleLaw = singleLaws res.message.text

    if text.match(/apple/i) or text.match(/dev/i)
      lawsInQuestion = appleLaws
    else if text.match(/deploy/i) or text.match(/release/i)
      lawsInQuestion = deployLaws
    else
      lawsInQuestion = laws

    if(singleLaw != null)
      res.send lawsInQuestion[singleLaw]
    else
      res.send '\n' + lawsInQuestion.join('\n')
