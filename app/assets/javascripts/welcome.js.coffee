ready = ->
  $('#trending').on 'mouseenter', '.design-background-wrapper', ->
      $(this).find('.details').fadeIn(400)

  $('#trending').on 'mouseleave', '.design-background-wrapper', ->
      $(this).find('.details').fadeOut(250)

  $("#trending").on 'click', '.tpage', (e) ->
    e.preventDefault()
    $.getScript(this.href)
    return false;

$(document).ready(ready)
$(document).on('page:load', ready)
