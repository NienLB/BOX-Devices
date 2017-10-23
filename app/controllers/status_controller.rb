class StatusController < ApplicationController


  def index
    @time = Date.today
  	@devices = Device.order(:id_code)
  end

 
end

