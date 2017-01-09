require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module AnimalType
        def self.registered(app)
          app.get '/animals/:animal_type' do
            # TODO replace with your logic returning :animal_type
            "params: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::AnimalType
end
