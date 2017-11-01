jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  payment.setup()

payment = 
  setupForm: ->
    $('#new_order').submit ->
      $('input[type=submit]').attr('disabled', true)
      Stripe.card.createToken($('#new_order'), payment.handleStripeResponse)
      false

  handleStripeResponse: (status, reponse) ->
    if status == 200
      alert(response.id)
    else
      alert(response.error.message)
