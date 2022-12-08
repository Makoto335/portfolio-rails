class ContactMailer < ApplicationMailer
  def send_mail(contact)
    @contact = contact
    mail(
      from: 'system@example.com',
      to:   ENV["MAIL_ADDRESS"],
      subject: 'お問い合わせ通知',
    )
  end
end