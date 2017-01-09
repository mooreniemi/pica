require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module GenericParent
        def self.registered(app)
          app.get '/:animal_type' do
            # TODO replace with your logic returning :animal_type
            "params: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::GenericParent
end
