require 'sinatra/base'
require 'json'

module Sinatra
  module Zoo
    module Resources
      module Animal
        def self.registered(app)
          app.get '/' do
            content_type :json
            {"representation_uuid"=>"animals#b806cfb4-6e0f-453b-a33a-bdd7c35f8d3c", "name"=>"animals", "tigers"=>[{"representation_uuid"=>"tiger#51e50c5f-83e5-4622-ae8a-85bf4b820580", "embedded_or_full"=>"embedded", "name"=>"oliver", "affordances"=>[{"name"=>"self", "url"=>"animals/tigers/oliver", "return_type"=>"tiger#33"}]}], "affordances"=>[{"name"=>"self", "url"=>"/animals", "return_type"=>"animals"}, {"name"=>"add_animal", "http_method"=>"POST", "url_template"=>"animals/:animal_type", "return_type"=>"animal_type#id", "params"=>{"name"=>"default name"}}, {"name"=>"animal_type", "http_method"=>"GET", "url_template"=>"animals/:animal_type", "return_type"=>"animal_type"}, {"name"=>"up", "url"=>"animals", "return_type"=>"animals"}, {"name"=>"root", "url"=>"animals", "return_type"=>"animals"}]}.to_json
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::Animal
end
