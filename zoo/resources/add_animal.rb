require 'sinatra/base'

module Zoo
  module Resources
    class AddAnimal < Sinatra::Application
        post 'animals/:animal_type' do
# replace with your logic
"you sent: #{params}"
      end
    end
  end
end
