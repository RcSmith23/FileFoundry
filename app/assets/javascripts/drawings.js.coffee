
ready = ->
  # Display and hide drawing quick-view details menu
  $('.design-background-wrapper').hover( 
      (ev) -> $(this).find('.details').fadeIn(400)
      (ev) -> $(this).find('.details').fadeOut(250)
  )
  $('.design-background-wrapper').click( 
      (ev) -> $(this).find('.details').hide())

  # Tab action for description or comments 
  $('#drawing-tabs a').click((ev) -> $(this).tab('show'))

$(document).ready(ready)
$(document).on('page:load', ready)

