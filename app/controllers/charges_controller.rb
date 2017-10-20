class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = 59900

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    current_user.paid = true
    current_user.save

    @from_email = params[:stripeEmail]
    PaymentMailer.payment_confirmation(@from_email).deliver_now


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to 'houses/index'
  end
end
