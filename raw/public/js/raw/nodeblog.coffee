$("#header li[role='presentation']:first a").tab 'show'

$("#header li[role='presentation'] a").click (e)->
    e.preventDefault
    $(this).tab 'show'
