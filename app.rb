require 'sinatra'
require 'sinatra/reloader'
require './lib/triangle'

get '/' do
  erb :index
end

get '/results' do
  @side_a = params['side_a']
  @side_b = params['side_b']
  @side_c = params['side_c']
  @triangle = Triangle.new(@side_a, @side_b, @side_c)
  erb :results
end
