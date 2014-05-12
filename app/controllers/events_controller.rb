class EventsController < ApplicationController
	
	def index
		@events = Event.all
	end

	def new
		@new_event = Event.new
	end

	def create
		@new_event = Event.new(event_params)
		if @new_event.save
			redirect_to events_path
		else
			render :new
		end
	end

	def destroy
		@event = Event.find(params[:id])
		if @event.update_attributes(event_params)
			redirect_to events_path
		else
			render :index
		end
	end

	def show
		@event = Event.find(params[:id])
		@new_photo = @event.photos.build
		@photos = @event.photos
	end

	private

	def event_params
		params.require(:event).permit(:name, :location, :description, :event_date, :event_photo, photographic_attributes:[:image])
	end
end
