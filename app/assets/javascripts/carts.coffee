#$(document).ready ->
#  $('.cart_quantity').on 'change keyup', (el, event, handler) ->
#
#    console.log(el.target.value)
#    console.log(el.target.dataset.id)
#    id = el.target.dataset.id
#    qtt = el.target.value
#    price = $('.price_'+ id).data('value')
#    total = qtt * price
#    console.debug('total: ', total)
#    return
#  return


checkCoupon = (coupon) ->
  $.ajax({
    url: '/coupon'
    method: 'POST'
    data: coupon: coupon
  }).done((res) ->
    $('#verify-result').removeClass();
    $('#verify-result').attr('class', res.data.toLowerCase())
    $('#verify-result').html(res.data.toUpperCase())
    return
  )
  return

$(document).ready ->
  $('#check-coupon').click ->
    coupon = $('.coupon__input').val()
    checkCoupon(coupon)
    return