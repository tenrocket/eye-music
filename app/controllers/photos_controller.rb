class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end

	def new
		@new_photo = Photo.new
	end

	def create
		@new_photo = Photo.new(photo_params)
		if @new_photo.save
			redirect_to photos_path
		else
			redirect_to new_photo_path
		end
	end

	def show
		@photo = Photo.find(params[:id])
		@new_comment = @photo.comments.build
		@new_tag = @photo.tags.build
	end

	private

	def photo_params
		params.require(:photo).permit(:image, :user_id, commentable_attributes:[:content])
	end
end
