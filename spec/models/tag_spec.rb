require 'spec_helper'

describe Tag do
	it 'should be invalid without text' do
		t = FactoryGirl.build(:invalid_tag)
		t.should_not be_valid
	end

end