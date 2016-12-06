class MoviesController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]
  def index
  	@movies = Movie.all
  end

  def new 
  	@movie = Movie.new
  end

	
  def show
  end

  def create
  		@event = Movie.create(event_params)
		redirect_to movies_path
  end

  def edit
  	
  end

  def update
  	@event.update(event_params)
  	redirect_to movies_path
  end

  def destroy
  	@event.destroy
  	redirect_to event_path
  end

  private
		def set_event
			@movie = Movie.find(params[:id])
		end

		def event_params
			params.require(:movie).permit(:title, :description, :raiting, :total_gross, :released_on)
		end
end
