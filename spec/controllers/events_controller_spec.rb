require 'spec_helper'

describe EventsController do
	
	describe "GET #index" do
		it 'assigns collection of events' do
			f = FactoryGirl.create(:event)
			get :index
			assigns(:events).count.should eq(1)
		end

		it 'renders the index page' do
			get :index
			response.should render_template :index
		end
	end

	describe "GET #new" do
		it 'assigns @new_event with a new event'
		it 'renders the new page'
	end

	describe "POST #create" do
		context "valid event attributes" do
			it 'creates a new event' do
				event_attrs = FactoryGirl.attributes_for(:event)
				expect{
					post :create, event: event_attrs
				}.to change(Event, :count).by(1)
			end
			it 'redirects to the index page' do
				event_attrs = FactoryGirl.attributes_for(:event)
				post :create, event: event_attrs
				response.should redirect_to events_path
			end
		end

		context "invalid event attributes" do
			it 'does not create a new event'
			it 'renders the new page'
		end
	end

	describe "DELETE #destroy" do
		it 'deletes a chosen event' do
			event_attrs = FactoryGirl.attributes_for(:event)
			expect{
				delete :destroy, event: event_attrs
			}.to change(Event, :count).by(1)
		end
	end

end