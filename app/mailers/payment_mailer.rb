class PaymentMailer < ApplicationMailer
  def payment_confirmation(from_email)
    @from_email = from_email
    mail(to: from_email, subject: "Payment Confirmation")
  end
end
