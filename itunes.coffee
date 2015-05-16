command: "sh itunes.widget/itunes.sh"

refreshFrequency: 10000

style: """
  /* Modify Colors and Size Here:*/
  
  size = 700px                //This is just a base for the overall size so everything stays centered

  width: size   
  text-align: left


  height: 60px
  
  /*POSITION*/
  top: 63.2%
  left: 3.5%

  /*COLORS*/
  primaryColor = rgba(255,255,255,0.55)
  secondaryColor = rgba(0, 0, 0, 0.15)
  textColor = rgba(255,255,255,0.85)

  font-family: Helvetica
  font-weight: 300
  font-size: 16px

  #ico
    float: left
    margin-right: 30px

  #text
    float: left

  img
    opacity: 0.7

  #play
    color: textColor

  #track
    color: primaryColor
    font-size: 14px
    font-weight: 300

  #ibox
    padding: 15px 0px 15px 0px
    color: primaryColor
    
"""


render: (output) -> """
  <div id="ibox">
    <div id="ico"><img src="itunes.widget/itunes.png" width="33" height="33"></div>
    <div id="text">
        <div id="play"><b>iTunes playing</b></div>
        <div id="track"></div>
    </div>
  </div>
  

"""


update: (output) ->
  json = JSON.parse(output);
  if json['state'] == "playing"
    $('#ibox').show()
    $('#track').text json['track']
  else
    $('#ibox').hide()

