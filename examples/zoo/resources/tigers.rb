require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module Tiger
        def self.registered(app)
          app.get '/tigers' do
            # TODO replace with your logic returning tigers
            "params: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::Tiger
end
