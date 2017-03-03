class BoatsController < ApplicationController

	def index
		@boat = Boat.new
		@boats= Boat.all
	end

	def create
		@boat = Boat.new(boat_params)

		@boat.save
		redirect_to :back
	end

	def new
	end

	def show	
		@boat = Boat.find(params[:id])
	end

	def edit
		@boat = Boat.find(params[:id])
	end

	def destroy
		Boat.find(params[:id]).destroy

		redirect_to :back
	end

	def update
		boat = Boat.find(params[:id])
		boat.update_attributes(boat_params)
		boat.save
		redirect_to root_path

	end

	private

	def boat_params
		params.require(:boat).permit(:name, :max_load, :current_l, :job_id, :image)
	end

end
