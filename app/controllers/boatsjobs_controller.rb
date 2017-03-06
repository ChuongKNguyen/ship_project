class BoatsjobsController < ApplicationController
	def index
		@jobs = Job.all 
		@boats = Boat.all
	end 

	def create
		@boat_job = BoatJob.create(boat_job_params)
	end 

	def new

	end 

	private

	def boat_job_params
		params.require(:boat_job).permit(:boat_id, :job_id)
	end
end
