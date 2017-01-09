require 'sinatra/base'

module Sinatra
  module Zoo
    module Resources
      module FeedHim
        def self.registered(app)
          app.put '/animals/tigers/:animal_name/stomach' do
          # replace with your logic
          "you sent: #{params}"
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::FeedHim
end
