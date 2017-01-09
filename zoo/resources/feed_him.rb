require 'sinatra/base'

module Zoo
  module Resources
    class FeedHim < Sinatra::Application
        put 'animals/tigers/:animal_name/stomach' do
# replace with your logic
"you sent: #{params}"
      end
    end
  end
end
