class Api::ParamsExamplesController < ApplicationController
  def query
    render 'query_view.json.jb'
  end
end
