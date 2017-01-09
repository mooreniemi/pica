require 'sinatra/base'

module Zoo
  module Resources
    class Animal < Sinatra::Application
        get '' do
# replace with your logic
"you sent: #{params}"
      end
    end
  end
end
