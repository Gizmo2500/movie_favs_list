class SearchesController < ApplicationController
  def index
  	if params[:q]
  	 resp = Typhoeus.get("http://omdbapi.com", :params => {:s => params[:q]})
  	 json_resp = JSON.parse(resp.body)
  	 @search = json_resp["Search"]
  	else
  	@search = []
  	end
  end

  def movie
  	if params[:q]
  	resp = Typhoeus.get("http://omdbapi.com", :params => {:i => params[:q]})
  	json_resp = JSON.parse(resp.body)
  	@movie = json_resp
  	else
  	 @movie = {}
  	 redirect_to "/searches" 
  	end
  end
end
