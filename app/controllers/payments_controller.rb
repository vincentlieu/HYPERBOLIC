class PaymentsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]

  def success()
  end

  def webhook()
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    listing_id = payment.metadata.listing_id
    user_id = payment.metadata.user_id

    Purchase.create(
      user_id: user_id,
      listing_id: listing_id,
      stripe_receipt: payment_id,
    )
  end
end
