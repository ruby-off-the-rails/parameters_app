class Api::ParamsExamplesController < ApplicationController
  def query
    @name = params[:name]
    render 'query_view.json.jb'
  end
end
