class Photo < ActiveRecord::Base
	has_and_belongs_to_many :tags
	has_many :comments, as: :commentable
	belongs_to :user
	accepts_nested_attributes_for :comments

	mount_uploader :image, ImageUploader
end
