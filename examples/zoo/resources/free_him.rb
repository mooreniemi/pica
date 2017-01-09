require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module FreeHim
        def self.registered(app)
          app.delete '/animals/tigers/cages/:animal_name' do
            # TODO replace with your logic returning empty_cage
            "params: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::FreeHim
end
