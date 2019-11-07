Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_parameter_example_url" => "params_examples#query"
    get "/name_url" => "params_examples#name"
    get "/guess_a_number" => "params_examples#number_game"

    # url segment parameter
    get "/url_segment/:name" => "params_examples#wildlife"
  end


end
