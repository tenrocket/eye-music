require 'spec_helper'

describe Event do
	it 'should be invalid without a date' do
		e = FactoryGirl.build(:invalid_event)
		e.should_not be_valid
	end

	it 'should be scopable by event date' do
	y1 = FactoryGirl.create(:event, event_date: 4.days.ago)
	y2 = FactoryGirl.create(:event, event_date: 3.weeks.ago)
	# y2.save
	# y1.save

	Event.past_week.should eq([y1])
	end
end