class UserMailer < ActionMailer::Base
  default from: "meinvoiceme@gmail.com"

  def notify(invitation)
  	@invitation = invitation
    mail( :to => @invitation.email, :subject => "Invitation from Invoice Me")
  end
end
