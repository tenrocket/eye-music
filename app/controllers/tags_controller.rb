class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def new
		@new_tag = Tag.new
		@photo = Photo.new
	end

	def create
		@new_tag = Tag.new(tag_params)
		@photo = Photo.find(params[:photo_id])
		if @new_tag.save
			@photo.tags << @new_tag
			redirect_to :back
		else
			redirect_to photos_path
		end
	end

	def show
		@tag = Tag.find(params[:id])
	end

	private

	def tag_params
		params.require(:tag).permit!
	end
end
