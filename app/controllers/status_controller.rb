class StatusController < ApplicationController
  before_action :authorize

  def index
    @time = Date.today
  	@devices = Device.order(:id_code)
  end

 
end

