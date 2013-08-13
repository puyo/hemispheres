$ ->
  $hemi = $('#hemispheres')
  $container = $('.map-container', $hemi)
  $image = $('.map-image', $container)
  $image.load ->
    # set it as the bg image for the container
    $container.css('background-image', "url(#{$image.attr('src')})")

  $('html').on 'mousemove', (e) ->
    x = e.screenX * 3
    $container.css('background-position', "#{x}px 0")

  $hemi.click ->
    $container.toggleClass('flipped')
