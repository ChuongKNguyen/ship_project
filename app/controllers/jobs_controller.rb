class JobsController < ApplicationController
	def index
		@jobs=Job.all.order('created_at DESC')
	end	

	def new 
		@job= Job.new
		@boats = Boat.all
	end 

	def create 
		@job= Job.new(job_params)
		@job.user_id = current_user.id
  		if @job.save 
			redirect_to jobs_path
		else 
			render 'new'
		end
	end

	def show 
		@job = Job.find(params[:id])
		@user = current_user 
	end

	def edit
		@job = Job.find(params[:id])
	end

	def update
		job = Job.find(params[:id])
		job.update_attributes(job_params)
		job.save
		redirect_to jobs_path 
  	end  

  	def destroy
		Job.find(params[:id]).destroy
		redirect_to :back
	end

	private

	def job_params
		params.require(:job).permit(:status_job, :container, :cargo, :origin, :destination, :job_name, :cost, :job_description, :user_id, :boat_id)
	end

end
