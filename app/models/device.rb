class Device < ApplicationRecord

	validates :id_code, :name, :price, :vendor, :location, :date, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}

end