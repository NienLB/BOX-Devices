class Device < ApplicationRecord

STATUS_OPTIONS = ['GOOD','NOT WORKING','WARRANTY','FAILED']
LOCATIONS = ['BOX1' , 'BOX2' , 'BOX3' , 'BOX4' , 'OFFICE']
  # scope
  # relationships
  belongs_to :vendor
  belongs_to :category
	has_many :type_devices
  # validation
  validates :id_code, :name, :price, :vendor, :location, :date, :status, presence: true 
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
  
  def category_name
    category.nil? ? "N/A" : category.name
  end

  def vendor_name
    vendor.nil? ? "China" : vendor.name
  end

  def status_name
    # if status =='GOOD'
    #     status = 1
    #   elsif status =='NOT WORKING'
    #     status = 2
    #   elsif status =='WARRANTY'
    #     status = 3
    #   elsif status =='FAILED' 
    #     status = 4
    # end

    case status
    when 'GOOD'
      status = 1
    when 'NOT WORKING'
      status = 2
    when 'WARRANTY'
      status = 3
    when 'FAILED'
      status = 4
    end
    
        
      

        

  end

end
