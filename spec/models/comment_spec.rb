require 'spec_helper'

describe Comment do
	it 'should be invalid without content' do
		c = FactoryGirl.build(:invalid_comment)
		c.should_not be_valid
	end

end