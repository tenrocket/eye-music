class User < ActiveRecord::Base
	has_many :photos
	# has_many :comments, as: :commentable

	mount_uploader :user_photo, UserPhotoUploader
end
