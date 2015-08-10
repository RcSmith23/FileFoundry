ready = ->
  $('.design-background-wrapper').hover( 
      (ev) -> $(this).find('.details').fadeIn(400)
      (ev) -> $(this).find('.details').fadeOut(250)
  )

$(document).ready(ready)
$(document).on('page:load', ready)

