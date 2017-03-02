class JobsController < ApplicationController
	def index
		@jobs=Job.all
	end	

	def new 
		@job= Job.new
		@boats = Boat.all
	end 

	def create 
		@job= Job.new(job_params)

  		if @job.save 
			redirect_to jobs_path
		else 
			render 'new'
		end
	end

	def show 
		@job = Job.find(params[:id])
	end  

	private

	def job_params
		params.require(:job).permit(:status_job, :container, :cargo, :origin, :destination, :job_name, :cost, :job_description, :user_id, :boat_id)
	end

end
