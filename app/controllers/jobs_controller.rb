class JobsController < ApplicationController
	def index
		@jobs=Job.all.order('created_at DESC')
		@boatjob = BoatJob.all
	end	

	def new 
		@job= Job.new
		@boats = Boat.all
	end 

	def create 
		@job= Job.new(job_params)
		@job.user_id = current_user.id
		if (@job.cost > 1000)
  			if @job.save 
				redirect_to jobs_path
			else 
				flash[:notice]="Warning: Could not create a job!"
				render 'new'
			end 	
		else 
			flash[:notice]="Cost of job must exceed $1,000!"
			render 'new'
		end
	end

	def show 
		@job = Job.find(params[:id])
		@user = current_user 
		@boats = Boat.all
		@boatjob = BoatJob.new
	end

	def edit
		@job = Job.find(params[:id])
		@boats = Boat.all.order('created_at DESC')

	end

	def update
		job = Job.find(params[:id])
		# job.status_job = job_params.status_job
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
		params.require(:job).permit(:container, :cargo, :origin, :destination, :job_name, :cost, :job_description, :user_id, :boat_id, :status_job)
	end

end
