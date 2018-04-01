OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  config = Rails.application.config.x.settings["oauth2"]
  provider :google_oauth2, '529173366435-99nk1b7rk961triqml3h6tvop1661plk.apps.googleusercontent.com', 'zsyFKmMRa0qzJyw1kfyymWGJ', skip_jwt: true
end
