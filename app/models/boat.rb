class Boat < ApplicationRecord
	has_many :jobs
	belong_to :user 
end
