class Boat < ApplicationRecord
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	has_many :boat_jobs, dependent: :destroy
	has_many :jobs , through: :boat_jobs
	belongs_to :user 
end

