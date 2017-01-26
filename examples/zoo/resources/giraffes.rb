require 'sinatra/base'
require 'json'

module Sinatra
  module Zoo
    module Resources
      module Giraffe
        def self.registered(app)
          app.get '/animals/giraffes' do
            content_type :json
            {"representation_uuid"=>"giraffes#0eeaee30-ac8c-42e1-96bc-e9b5715227d4", "name"=>"giraffes", "giraffes"=>[{"representation_uuid"=>"giraffe#e8119975-95fe-4a9e-91ca-7d1ea8f8fec5", "embedded_or_full"=>"embedded", "name"=>"olivia", "affordances"=>[{"name"=>"self", "url"=>"http://localhost:9292/animals/giraffes/olivia", "return_type"=>"giraffe#99"}]}], "affordances"=>[{"name"=>"self", "url_template"=>"http://localhost:9292/animals/giraffes", "url"=>"http://localhost:9292/animals/giraffes", "return_type"=>"giraffes"}, {"name"=>"giraffe", "url_template"=>"http://localhost:9292/animals/giraffes/:animal_name", "return_type"=>"giraffe#id"}, {"name"=>"add_giraffe", "http_method"=>"POST", "url_template"=>"http://localhost:9292/animals/giraffes", "return_type"=>"giraffe#id", "params"=>{"name"=>"default name"}}, {"name"=>"up", "url"=>"http://localhost:9292/animals", "return_type"=>"animals"}, {"name"=>"root", "url"=>"http://localhost:9292/animals", "return_type"=>"animals"}]}.to_json
          end
        end
      end
    end
  end
  register Sinatra::Zoo::Resources::Giraffe
end
