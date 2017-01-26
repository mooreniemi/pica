require 'sinatra/base'
require 'json'

module Sinatra
  module Zoo
    module Resources
      module Free
        def self.registered(app)
          app.delete '/animals/:animal_type/cages/:animal_name' do
            content_type :json
            {}.to_json
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::Free
end
