# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_c11_session',
  :secret      => 'da605d318ff7e0dd7bf59d996e424f66a2673fc209c131586da8c8e9ab012783f3027e3d8fbe37fa9639acaa93b0e42365c9875061c9f640f301f5ae6f0e8c23'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
