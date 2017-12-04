module StatusHelper
	def display_status(status)
  		(status==true) ? image_tag("check.gif", :title => "Good")  : image_tag('service-disruption.gif',  :title => "Failed")
  	end

	private
	def image(name)
	  	"~/assets/images/#{name}%>"
	end

end
