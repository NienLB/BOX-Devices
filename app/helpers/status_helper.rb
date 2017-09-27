module StatusHelper
	 def display_status(status)
  	(status==true) ? image_tag('check.png') : image_tag('uncheck.png')
  end

  private
  def image(name)
  	"~/assets/images/#{name}%>"
	end


end
