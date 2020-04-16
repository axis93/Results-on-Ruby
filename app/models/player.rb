class Player < ApplicationRecord
	has_many :results
	validates :name, presence: true, length: {maximum: 100}
end
