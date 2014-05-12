FactoryGirl.define do

	factory :comment do |f|
		f.content "The rain in Spain falls mainly in the plains."
	end

	factory :invalid_comment, class: Comment do |f|
		f.content nil
	end

#Faker Gem inputs and automates fake data

end