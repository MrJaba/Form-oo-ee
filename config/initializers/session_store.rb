# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tmp_remove_me_session',
  :secret      => 'f8a8a260ab04e4f5f069ff60ec39bbf134204f27d05b01fffa1bffebf5d9c3cf7c77b189ca93103231d6c10a792d284842a6f6c92f0d1fc0651740b28c017a74'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
