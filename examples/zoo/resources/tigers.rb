require 'sinatra/base'
require 'json'

module Sinatra
  module Zoo
    module Resources
      module Tiger
        def self.registered(app)
          app.get '/' do
            content_type :json
            {"representation_uuid"=>"tigers#145332f8-73f5-47ca-a728-4754ba0a3e06", "name"=>"tigers", "tigers"=>[{"representation_uuid"=>"tiger#51e50c5f-83e5-4622-ae8a-85bf4b820580", "embedded_or_full"=>"embedded", "name"=>"oliver", "affordances"=>[{"name"=>"self", "url"=>"animals/tigers/oliver", "return_type"=>"tiger#33"}]}], "affordances"=>[{"name"=>"self", "url"=>"/animals/tigers", "return_type"=>"tigers"}, {"name"=>"tiger", "url_template"=>"animals/tigers/:animal_name", "return_type"=>"tiger#id"}, {"name"=>"add_tiger", "http_method"=>"POST", "url_template"=>"animals/tigers", "return_type"=>"tiger#id", "params"=>{"name"=>"default name"}}, {"name"=>"up", "url"=>"animals", "return_type"=>"animals"}, {"name"=>"root", "url"=>"animals", "return_type"=>"animals"}]}.to_json
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::Tiger
end
