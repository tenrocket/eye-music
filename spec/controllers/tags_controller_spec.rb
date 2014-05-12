require 'spec_helper'

describe TagsController do
	
	describe "GET #index" do
		it 'assigns collection of tags' do
			f = FactoryGirl.create(:tag)
			get :index
			assigns(:tags).count.should eq(1)
		end

		it 'renders the index page' do
			get :index
			response.should render_template :index
		end
	end

	describe "GET #new" do
		it 'assigns @new_tag with a new tag'
		it 'renders the new page'
	end

	describe "POST #create" do
		context "valid tag attributes" do
			it 'creates a new tag' do
				tag_attrs = FactoryGirl.attributes_for(:tag)
				expect{
					post :create, tag: tag_attrs
				}.to change(Tag, :count).by(1)
			end
			it 'redirects to the index page' do
				tag_attrs = FactoryGirl.attributes_for(:tag)
				post :create, tag: tag_attrs
				response.should redirect_to tags_path
			end
		end

		context "invalid tag attributes" do
			it 'does not create a new tag'
			it 'renders the new page'
		end
	end

end