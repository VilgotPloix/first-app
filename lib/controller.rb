require 'bundler'
Bundler.require

require 'gossip'
class ApplicationController < Sinatra::Base
  get '/' do
  	erb :index, locals: {gossips: Gossip.all}
  end

  get'/new' do
  	erb :new
  end 

  post '/new/' do
  	Gossip.new(params["gossip_author"], params["gossip_content"]).save
  	redirect '/'
  end 


  get '/:id' do
  	erb :show, locals: {id: params['id'].to_i, gossips: Gossip.find(params['id'].to_i)}
	end

end