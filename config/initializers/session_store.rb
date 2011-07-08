# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_smart_bupt_session',
  :secret      => '1a7952127e8541d4749486fca02cda0f5b1bf4566edc6d3f198b597c6e29329e0e1de2391b7bc7afe69c87139c1b66dca34f4bad62895e27773e5872b9883632'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
