class StatusController < ApplicationController
  def index
  	@devices = Device.order(:id_code)
  end
end
