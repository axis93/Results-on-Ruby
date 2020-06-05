class Match < ApplicationRecord
	has_many :results
	has_many :players, through: :results 
end
