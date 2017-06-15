class Player < ApplicationRecord
	def self.search(search, x)
		if search
			self.where("displayname like ?", "%#{search}%").where("membertype like ?", "%#{x}%")
		else
			self.all
		end
	end

end
