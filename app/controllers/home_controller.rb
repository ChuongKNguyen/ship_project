class HomeController < ApplicationController
  def index
  	@jobs = Job.all.order('created_at DESC')
  	
  end
end
