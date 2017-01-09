require 'sinatra/base'
require './resources/animals.rb'
require './resources/add_animal.rb'
require './resources/tiger.rb'
require './resources/free_him.rb'
require './resources/feed_him.rb'


class ZooApp < Sinatra::Application

  use Zoo::Resources::Animal

  use Zoo::Resources::AddAnimal

  use Zoo::Resources::Tiger

  use Zoo::Resources::FreeHim

  use Zoo::Resources::FeedHim

  get '/' do
    "root"
  end
end
