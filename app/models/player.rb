class Player < ApplicationRecord
	def self.search(search)
		if search
			self.where("displayname like ?", "%#{search}%")
		else
			self.all
		end
	end
end
