require 'spec_helper'

describe Photo do
	it 'should be invalid without an image' do
		p = FactoryGirl.build(:invalid_photo)
		p.should_not be_valid
	end

end