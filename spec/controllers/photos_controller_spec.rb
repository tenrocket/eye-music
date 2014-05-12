require 'spec_helper'

describe PhotosController do
	
	describe "GET #index" do
		it 'assigns collection of photos' do
			f = FactoryGirl.create(:photo)
			get :index
			assigns(:photos).count.should eq(1)
		end

		it 'renders the index page' do
			get :index
			response.should render_template :index
		end
	end

	describe "GET #new" do
		it 'assigns @new_photo with a new photo'
		it 'renders the new page'
	end

	describe "POST #create" do
		context "valid photo attributes" do
			it 'creates a new photo' do
				photo_attrs = FactoryGirl.attributes_for(:photo)
				expect{
					post :create, photo: photo_attrs
				}.to change(Photo, :count).by(1)
			end
			it 'redirects to the index page' do
				photo_attrs = FactoryGirl.attributes_for(:photo)
				post :create, photo: photo_attrs
				response.should redirect_to photos_path
			end
		end
		context "invalid photo attributes" do
			it 'does not create a new photo'
			it 'renders the new page'
		end
	end

end