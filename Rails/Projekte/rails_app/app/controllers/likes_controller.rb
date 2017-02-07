class LikesController < ApplicationController

	def create

		@event = Event.find(params[:event_id])

#raise @event.likers.where(id: current_user.id).any?
		if @event.likers.where(id: current_user.id).any?
			redirect_to @event, alert: "Sie haben schon geliket"
		else
			@event.likes.create(user_id: current_user.id)
			redirect_to @event, notice: "Wurde geliket"
			
		end
	end

	def destroy
		@like = Like.find(params[:id])
		@like.delete
		redirect_to event_path(params[:event_id]), notice: "Wurde gelöscht"
	end
end
