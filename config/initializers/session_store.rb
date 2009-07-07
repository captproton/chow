# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_palooza_heroku_session',
  :secret      => '1771d259fcb4c0d068efd9bc754f4975e73ea356f4de344661abecd62941090936f57534a39ea72334ab646b48ffc726e6ab7f30b24d6b76b1f0a72bb72ef45e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
