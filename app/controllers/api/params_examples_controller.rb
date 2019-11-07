class Api::ParamsExamplesController < ApplicationController
  def query
    @name = params[:name]
    render 'query_view.json.jb'
  end

  def name
    @name = params[:name]
    if @name[0].downcase == "a"
      @message = "your name beings with 'a'"
    else
      @message = "your name does not begin with 'a'"
    end
    render 'name_information.json.jb'
  end
end


# make a route that works
# add a query parameter
# do logic around that query parameter
# send a message to the user based on that logic
