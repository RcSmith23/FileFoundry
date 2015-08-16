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

  # Still producing weird behavior when enter hit then back page
  $('.drawings-search-form').submit (ev) ->
    $('#jumbo-search-output').hide()

  $(".biginput").on 'keyup', (ev) ->
    $.get(window.location, $('.drawings-search-form').serialize(), null, 'script')

    ###
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
