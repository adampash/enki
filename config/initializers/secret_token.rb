# Be sure to restart your server when you modify this file.

if Rails.env.development? || Rails.env.test?
  Enki::Application.config.secret_key_base = SecureRandom.hex(20)
else
  # Your secret key for verifying the integrity of signed cookies.
  # If you change this key, all old signed cookies will become invalid!
  # Make sure the secret is at least 30 characters and all random,
  # no regular words or you'll be exposed to dictionary attacks.
  raise "Generate a secret with `rake secret` and paste it into `config/initializers/secret_token.rb`."

  # If this is an open source project, DO NOT commit your secret to source
  # control. Load it from ENV or a file that is git ignored (File.read)
  Enki::Application.config.secret_token    = 'fb55d381664355e770b699e446b2fccc267fbad111c65186724fd49cba7c1b204e35e0a31f6e0aefcb816504c2f8f9e71cea399a020f583cebfed3baea83af6c'
  Enki::Application.config.secret_key_base = 'fb55d381664355e770b699e446b2fccc267fbad111c65186724fd49cba7c1b204e35e0a31f6e0aefcb816504c2f8f9e71cea399a020f583cebfed3baea83af6c'
end
