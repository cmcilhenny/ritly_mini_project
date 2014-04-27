# require 'link_thumbnailer'

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
		@url.link = "http://#{@url.link}"
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

	def go
		@url = Url.where(random_string: params[:random_string]).first
		redirect_to @url.link, alert: "We're moving somewhere!"
	end

	def preview
		@url = Url.where(random_string: params[:random_string]).first
		@object = LinkThumbnailer.generate(@url.link)
	end

private
	def url_params
		params.require(:url).permit(:link, :random_string)
	end

end
