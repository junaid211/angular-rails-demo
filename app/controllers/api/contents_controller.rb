class Api::ContentsController < ApplicationController
	def index
		@contents = Content.select(:title, :published_date, :author, :summary, :content)
		respond_to do |format|
    	format.json  { render json: @contents } 
  	end
	end
end
