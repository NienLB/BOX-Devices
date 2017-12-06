module StatusHelper
	def display_status(status)
      if (status == 1)
          image_tag("check.gif", :title => "Good")
        elsif (status == 2)
          image_tag("not.gif", :title => "Not Working")
        elsif (status == 3)
          image_tag("war.gif", :title => "Warranty")
        elsif (status == 4)
          image_tag("failed.gif", :title => "Failed")                    
      end
  	end

	private
	def image(name)
	  	"~/assets/images/#{name}%>"
	end

end
