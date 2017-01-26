require 'sinatra/base'
require 'json'

module Sinatra
  module Zoo
    module Resources
      module AnimalType
        def self.registered(app)
          app.get '/animals/:animal_type' do
            content_type :json
            {"representation_uuid"=>"animal_type#48c275f0-b80c-44a9-a680-ab37cdda95a9", "name"=>"animal_type", "affordances"=>[{"name"=>"self", "url"=>"http://localhost:9292/animals/animal_type", "return_type"=>"animal_type#id"}, {"name"=>"tigers", "http_method"=>"GET", "url"=>"http://localhost:9292/animals/tigers", "return_type"=>"tigers"}, {"name"=>"giraffes", "http_method"=>"GET", "url"=>"http://localhost:9292/animals/giraffes", "return_type"=>"giraffes"}, {"name"=>"up", "url"=>"http://localhost:9292/animals", "return_type"=>"animals"}, {"name"=>"root", "url"=>"http://localhost:9292/animals", "return_type"=>"animals"}]}.to_json
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::AnimalType
end
