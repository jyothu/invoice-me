ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "gmail.com",
  :user_name => "meinvoiceme@gmail.com",
  :password => "meinvoiceme123",
  :authentication => "plain",
  :enable_starttls_auto => true
}