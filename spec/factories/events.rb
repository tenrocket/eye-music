FactoryGirl.define do

	factory :event do |f|
		f.name "Best Event Ever"
		f.location "Augusta, GA 30907"
		f.description "Seriously.  This event is awesome."
		f.event_date "April 20, 1955"
	end

	factory :invalid_event, class: Event do |f|
		f.event_date nil
	end

#Faker Gem inputs and automates fake data

end