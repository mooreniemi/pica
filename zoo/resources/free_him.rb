require 'sinatra/base'

module Zoo
  module Resources
    class FreeHim < Sinatra::Application
        delete 'animals/tigers/cages/:animal_name' do
# replace with your logic
"you sent: #{params}"
      end
    end
  end
end
