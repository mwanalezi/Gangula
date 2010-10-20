# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gangula_session',
  :secret      => '5652c24b82a881c55c17f4e6f57624c974b4a7e4c8135e631f04bcef98b613058a3c31b1c58bf96458ada93d1b40c03cd445d8a6ce6d34c442346e309a8eaef1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
