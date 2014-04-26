class UrlsController < ApplicationController

	def index 
		@urls = Url.all
	end

	def new 
		@url = Url.new
	end

	def show
		@url = Url.find(params[:id])
	end

	def create
		@url = Url.create url_params
		@url.random_string = SecureRandom.urlsafe_base64(4)  
		@url.save
		redirect_to url_path(@url)
	end

	def edit
		@url = Url.find(params[:id])
	end

	def update
		@url = Url.find(params[:id])
		@url.update url_params
		redirect_to url_path(@url)
	end

	def destroy
		Url.find(params[:id]).destroy
		redirect_to urls_path
	end

private
	def url_params
		params.require(:url).permit(:link, :random_string)
	end

end
