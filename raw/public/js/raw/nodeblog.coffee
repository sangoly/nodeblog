$("#header li[role='presentation']:first a").tab 'show'

$("#header li[role='presentation'] a").click (e)->
    e.preventDefault
    $(this).tab 'show'

$("#content .panel").each ->
    styles = ["panel-primary","panel-success","panel-info","panel-warning","panel-danger"]
    i = styles[Math.floor(Math.random() * 10 % 5)]
    $(this).attr "class", "panel " + i
