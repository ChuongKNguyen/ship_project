class HomeController < ApplicationController
  def index
  	@jobs = Job.all.order('created_at DESC')
  	@boatjob = BoatJob.all
	@boats = Boat.all
  end
end
