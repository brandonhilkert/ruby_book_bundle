require 'bundler'
Bundler.require
require "sinatra/reloader" if development?

set :static_cache_control, [:public, max_age: 60 * 60 * 24 * 365]

get '/' do
  erb :index
end
