# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_chow_session',
  :secret      => '57ac948a3caf3347281bab3f0924e072588a1de2e4bc5590d3ef6b5b6123d2f8d3c06c9afb5b33a440fb8f689976953156035771b663a5b02f09ee2d29f9269b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
