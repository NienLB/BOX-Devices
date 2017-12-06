class StatusController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @time = Date.today
  	@devices = Device.order(:id_code)
  end

 
end

