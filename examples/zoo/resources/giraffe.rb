require 'sinatra/base'
require 'json'

module Sinatra
  module Zoo
    module Resources
      module Giraffe
        def self.registered(app)
          app.get '/animals/giraffes/:animal_name' do
            content_type :json
            {"representation_uuid"=>"giraffe#e8119975-95fe-4a9e-91ca-7d1ea8f8fec5", "embedded_or_full"=>"full", "name"=>"olivia", "id"=>99, "caged"=>true, "stomach"=>"empty", "affordances"=>[{"name"=>"self", "url_template"=>"http://localhost:9292/animals/giraffes/:animal_name", "url"=>"http://localhost:9292/animals/giraffes/olivia", "return_type"=>"giraffe#99"}, {"name"=>"free", "http_method"=>"DELETE", "url_template"=>"http://localhost:9292/animals/:animal_type/cages/:animal_name", "url"=>"http://localhost:9292/animals/giraffes/cages/olivia", "return_type"=>"empty_cage"}, {"name"=>"feed", "http_method"=>"PUT", "url_template"=>"http://localhost:9292/animals/:animal_type/:animal_name/stomach", "url"=>"http://localhost:9292/animals/giraffes/olivia/stomach", "return_type"=>"giraffe#99", "params"=>{"food_type"=>"oats", "quantity"=>1}}, {"name"=>"up", "url"=>"http://localhost:9292/animals/giraffes", "url_template"=>"http://localhost:9292/animals/giraffes", "return_type"=>"giraffes"}, {"name"=>"root", "url"=>"http://localhost:9292/animals", "return_type"=>"animals"}]}.to_json
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::Giraffe
end
