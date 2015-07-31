class User < ActiveRecord::Base
	validates :name, presence: true
	validates_format_of :name, :with => /[A-Z][a-z]+\s[A-Z]\z/

	has_many :tasks

	def formatted_name
		arr = self.name.split
		return "#{arr[-1]}, #{arr[0]}"
	end
end