ActionMailer::Base.smtp_settings = {
  domain: 'https://plantopia.wogengapp.cn',
  address:        "smtp.sendgrid.net",
  port:            587,
  authentication: :plain,
  user_name:      'WZz2ODyGTqmnaDr0YrZ-Yw',
  password:       ENV['SENDGRID_API_KEY']
}

