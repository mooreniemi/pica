require 'sinatra/base'
require 'json'

module Sinatra
  module Zoo
    module Resources
      module Giraffe
        def self.registered(app)
          app.get '' do
            content_type :json
            {}.to_json
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::Giraffe
end
