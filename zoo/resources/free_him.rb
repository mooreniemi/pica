require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module FreeHim
        def self.registered(app)
          app.delete '/animals/tigers/cages/:animal_name' do
          # replace with your logic
          "you sent: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::FreeHim
end
