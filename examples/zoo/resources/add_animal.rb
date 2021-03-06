require 'sinatra/base'
require 'json'

module Sinatra
  module Zoo
    module Resources
      module AddAnimal
        def self.registered(app)
          app.post '/animals/:animal_type' do
            content_type :json
            {}.to_json
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::AddAnimal
end
