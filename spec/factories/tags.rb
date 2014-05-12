FactoryGirl.define do

	factory :tag do |f|
		f.tag_text "National Geographic"
	end

	factory :invalid_tag, class: Tag do |f|
		f.tag_text nil
	end

#Faker Gem inputs and automates fake data

end