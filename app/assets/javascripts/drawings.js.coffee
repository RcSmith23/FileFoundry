ready = ->
  $('.design-background-wrapper').hover( 
      (ev) -> $(this).find('.details').fadeIn(400)
      (ev) -> $(this).find('.details').fadeOut(250)
  )
  $('.design-background-wrapper').click( 
      (ev) -> $(this).find('.details').hide())

$(document).ready(ready)
$(document).on('page:load', ready)

