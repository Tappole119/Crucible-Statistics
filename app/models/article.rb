class Article < ApplicationRecord
	attr_accessor :gamertag,:psnid

	validates :gamertag, presence: true,length: { minimum: 5 }
end
