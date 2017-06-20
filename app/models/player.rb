class Player < ApplicationRecord
	def self.search(search, name)
		if search
      		self.where("displayname like ? and membertype like ?", "%#{search}%", "%#{name}%")
		else
			self.all
		end
	end
end
