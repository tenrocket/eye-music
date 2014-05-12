FactoryGirl.define do

	factory :photo do |f|
		f.image "string"
	end

	factory :invalid_photo, class: Photo do |f|
		f.image nil
	end

#Faker Gem inputs and automates fake data

end