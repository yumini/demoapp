ActionMailer::Base.perform_deliveries = true # Set it to false to disable the email in dev mode
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.gmail.com',
  :port                 =>  '587',
  :domain               =>  'mail.google.com',
  :authentication       =>  :plain,
  :user_name            =>  'sistema.correo.16@gmail.com',
  :password             =>  'correo2016',
}