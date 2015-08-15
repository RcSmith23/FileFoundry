ready = ->
  $('#trending').on 'mouseenter', '.design-background-wrapper', ->
      $(this).find('.details').fadeIn(400)

  $('#trending').on 'mouseleave', '.design-background-wrapper', ->
      $(this).find('.details').fadeOut(250)

  $("#trending").on 'click', '.tpage', (e) ->
    e.preventDefault()
    $.getScript(this.href)
    return false;
  
  $('.biginput').focus (ev) ->
    $('#jumbo-search-output').fadeIn(200)

  $('.biginput').blur (ev) ->
    $('#jumbo-search-output').fadeOut(200)

  $('.drawings-search-form').submit (ev) ->
    $('#jumbo-search-output').hide()

    ###
  $(".biginput").on 'keyup', (ev) ->
    if $('.biginput').val().length > 0
      $('#jumbo-search-output').fadeIn(200)
    else
      $('#jumbo-search-output').fadeOut(200)

  $(document).mouseup (ev) ->
    if !$('#jumbo-search-output').is(ev.target) &&
        !$('.biginput').is(ev.target)
      $('#jumbo-search-output').fadeOut(200)

  $(".biginput").on 'click', (ev) ->
    if $('.biginput').val().length > 0
      $('#jumbo-search-output').fadeIn(200)
      ###

$(document).ready(ready)
$(document).on('page:load', ready)
