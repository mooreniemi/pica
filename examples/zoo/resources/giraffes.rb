require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module Giraffe
        def self.registered(app)
          app.get '/animals/giraffes' do
            # TODO replace with your logic returning giraffes
            "params: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::Giraffe
end
