require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module AddAnimal
        def self.registered(app)
          app.post '/animals/:animal_type' do
            # TODO replace with your logic returning :animal_type::id
            "params: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::AddAnimal
end
