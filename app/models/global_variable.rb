class GlobalVariable < ApplicationRecord
	
	def self.settings
		@@settings = {
			:current_semester_id => find(1).data.to_i
		}
	end
end
