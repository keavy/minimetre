# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mm_app_session',
  :secret      => '489b712382558971c8d6773e645641d9023a9423090d0bb1ffeddbec94e7a8d8f1b73cf01f531148dff70b1e4d294a50c8420ef37e7222655b01200210a15da7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
