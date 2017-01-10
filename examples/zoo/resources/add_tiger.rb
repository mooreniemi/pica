require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module AddTiger
        def self.registered(app)
          app.post '/tigers' do
            # TODO replace with your logic returning tiger
            "params: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::AddTiger
end
