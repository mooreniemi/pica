require 'sinatra/base'
require 'json'

module Sinatra
  module Zoo
    module Resources
      module AddTiger
        def self.registered(app)
          app.post '/animals/tigers' do
            content_type :json
            {"representation_uuid"=>"tiger#51e50c5f-83e5-4622-ae8a-85bf4b820580", "embedded_or_full"=>"full", "name"=>"oliver", "id"=>33, "caged"=>true, "stomach"=>"empty", "affordances"=>[{"name"=>"self", "url_template"=>"animals/tigers/:animal_name", "url"=>"animals/tigers/oliver", "return_type"=>"tiger#33"}, {"name"=>"free_him", "http_method"=>"DELETE", "url_template"=>"animals/tigers/cages/:animal_name", "url"=>"animals/tigers/cages/oliver", "return_type"=>"empty_cage"}, {"name"=>"feed_him", "http_method"=>"PUT", "url_template"=>"animals/tigers/:animal_name/stomach", "url"=>"animals/tigers/oliver/stomach", "return_type"=>"tiger#33", "params"=>{"food_type"=>"meat", "quantity"=>1}}, {"name"=>"up", "url"=>"tigers", "url_template"=>"tigers", "return_type"=>"tigers"}, {"name"=>"root", "url"=>"animals", "return_type"=>"animals"}]}.to_json
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::AddTiger
end
