class Device < ApplicationRecord

  # scope
  # relationships
  belongs_to :category
	has_many :type_devices
  # validation
  validates :id_code, :name, :price, :vendor, :location, :date, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}

  def category_name
    category.nil? ? "N/A" : category.name
  end


end

class Value < ActiveRecord::Base
	
	LOCATIONS = ['BOX1' , 'BOX2' , 'BOX3' , 'BOX4' , 'OFFICE']

end
