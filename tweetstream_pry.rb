require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key = ENV.fetch 'CONSUMER_KEY'
  config.consumer_secret = ENV.fetch 'CONSUMER_SECRET'
  config.oauth_token = ENV.fetch 'OAUTH_TOKEN'
  config.oauth_token_secret = ENV.fetch 'OAUTH_TOKEN_SECRET'
  config.auth_method = :oauth
end

TweetStream::Client.new.track("#NaNoWriMo") do |status,client|
require 'pry'
binding.pry
end