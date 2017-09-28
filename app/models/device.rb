class Device < ApplicationRecord

	validates :id_code, :name, :price, :vendor, :location, :date, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}



end

class Value < ActiveRecord::Base
	
	LOCATIONS = ['BOX1' , 'BOX2' , 'BOX3' , 'BOX4']

end
