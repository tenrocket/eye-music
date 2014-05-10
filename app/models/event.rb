class Event < ActiveRecord::Base

	has_many :comments, as: :commentable
	has_many :photos, as: :photographic
	accepts_nested_attributes_for :photos
	belongs_to :user

	mount_uploader :event_photo, EventPhotoUploader
end
