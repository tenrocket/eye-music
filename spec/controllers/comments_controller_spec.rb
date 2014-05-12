require 'spec_helper'

describe CommentsController do
	
	describe "GET #index" do
		it 'assigns collection of comments' do
			f = FactoryGirl.create(:comment)
			get :index
			assigns(:comments).count.should eq(1)
		end

		it 'renders the index page' do
			get :index
			response.should render_template :index
		end
	end

	describe "GET #new" do
		it 'assigns @new_comment with a new comment'
		it 'renders the new page'
	end

	describe "POST #create" do
		context "valid comment attributes" do
			it 'creates a new comment' do
				comment_attrs = FactoryGirl.attributes_for(:comment)
				expect{
					post :create, comment: comment_attrs
				}.to change(Comment, :count).by(1)
			end
			it 'redirects to the photo show page' do
				comment_attrs = FactoryGirl.attributes_for(:comment)
				post :create, comment: comment_attrs
				response.should redirect_to :back
			end
		end

		context "invalid comment attributes" do
			it 'does not create a new comment'
			it 'renders the new page'
		end
	end

	describe "DELETE #destroy" do
		it 'deletes a chosen comment' do
			comment_attrs = FactoryGirl.attributes_for(:comment)
			expect{
				delete :destroy, comment: comment_attrs
			}.to change(Comment, :count).by(1)
		end
	end

end