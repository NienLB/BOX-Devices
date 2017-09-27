class StatusController < ApplicationController
  def index
  	@devices = Device.order(:id_code)




  end

  def display_status(status)
  	(status==true) ? image("check.png") : image("uncheck.png")
  end

  private
  def image(name)
  	"../images/#{name}"
	end


end

