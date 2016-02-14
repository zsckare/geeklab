class SearchController < ApplicationController
  def create
  	palabra = "%#{params[:keyword]}%"

  	@clients = Client.where("name LIKE ? OR lastname LIKE ?",palabra,palabra)
  	respond_to do |format|
  		format.json {render json: @clients}
  		format.js
  	end
  end
end
