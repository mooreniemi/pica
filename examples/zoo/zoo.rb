require 'sinatra/base'
require './resources/animals.rb'
require './resources/add_animal.rb'
require './resources/tiger.rb'
require './resources/free_him.rb'
require './resources/feed_him.rb'


class ZooApp < Sinatra::Application
  register Sinatra::Zoo::Resources::Animal
  register Sinatra::Zoo::Resources::AddAnimal
  register Sinatra::Zoo::Resources::Tiger
  register Sinatra::Zoo::Resources::FreeHim
  register Sinatra::Zoo::Resources::FeedHim

  get '/' do
    "root"
  end
end
