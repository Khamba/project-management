class Task < ActiveRecord::Base
	validates :description, presence:true
	validates_date :start_date
	validates_date :end_date
	validates :estimated_hours, :numericality => { :greater_than_or_equal_to => 0 }
	validates :hours_spent, :numericality => { :greater_than_or_equal_to => 0 }

	belongs_to :user
end