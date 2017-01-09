require 'sinatra/base'

module Zoo
  module Resources
    class Tiger < Sinatra::Application
        get 'animals/tigers/:animal_name' do
# replace with your logic
"you sent: #{params}"
      end
    end
  end
end
