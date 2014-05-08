class Comment < ActiveRecord::Base
	#has_secure :password
	belongs_to :commentable, polymorphic: true
end