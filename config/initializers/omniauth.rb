OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '930018812226-bdur1ahkqobu1bg5e38kgapvtq1gjsc9.apps.googleusercontent.com', 'WdHmE3VpD5vXMImyHE6rD4dT', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end