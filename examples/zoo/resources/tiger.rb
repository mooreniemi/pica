require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module Tiger
        def self.registered(app)
          app.get '/animals/tigers/:animal_name' do
          # replace with your logic
          "you sent: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::Tiger
end
