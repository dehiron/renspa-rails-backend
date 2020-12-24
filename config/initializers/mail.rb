ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  domain: 'gmail.com',
  port: 587,
  user_name: 'renspa.reservation@gmail.com',
  password: 'rensparenspa',
  authentication: 'plain',
  enable_starttls_auto: true
}