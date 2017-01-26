require 'sinatra/base'
require './resources/add_animal_type.rb'
require './resources/giraffes.rb'
require './resources/tigers.rb'
require './resources/animals.rb'
require './resources/free.rb'
require './resources/feed.rb'
require './resources/giraffe.rb'
require './resources/add_giraffe.rb'
require './resources/check_hunger.rb'
require './resources/tiger.rb'
require './resources/add_tiger.rb'


class ZooApp < Sinatra::Application
  register Sinatra::Zoo::Resources::AddAnimalType
  register Sinatra::Zoo::Resources::Giraffe
  register Sinatra::Zoo::Resources::Tiger
  register Sinatra::Zoo::Resources::Animal
  register Sinatra::Zoo::Resources::Free
  register Sinatra::Zoo::Resources::Feed
  register Sinatra::Zoo::Resources::Giraffe
  register Sinatra::Zoo::Resources::AddGiraffe
  register Sinatra::Zoo::Resources::CheckHunger
  register Sinatra::Zoo::Resources::Tiger
  register Sinatra::Zoo::Resources::AddTiger

end
