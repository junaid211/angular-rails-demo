class Api::ContentsController < ApplicationController
	def index
		@contents = Content.published.select(:title, :published_date, :author, :summary, :content, :status)
		respond_to do |format|
    	format.json  { render json: @contents } 
  	end
	end
end
