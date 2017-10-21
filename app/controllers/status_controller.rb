class StatusController < ApplicationController
  before_action :authorize

  def index
  	@devices = Device.order(:id_code)




  end

 
end

