Rails.application.config.middleware.use Omniauth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SEC'], scope: 'userinfo.profile,youtube'
end
OM
