class EnquiryMailer < ApplicationMailer
  def enquiry_notification(from_email, to_email, message)
    @from_email = from_email
    @to_email = to_email
    @message = message
    mail(to: to_email, subject: "Enquiry from #{from_email}")
  end
end
