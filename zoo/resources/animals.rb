require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module Animal
        def self.registered(app)
          app.get '/' do
          # replace with your logic
          "you sent: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::Animal
end
