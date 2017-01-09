require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module AddAnimal
        def self.registered(app)
          app.post '/animals/:animal_type' do
          # replace with your logic
          "you sent: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::AddAnimal
end
