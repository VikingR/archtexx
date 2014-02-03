module ApplicationHelper

# Helper method that provides base title 'Archtexx' and takes the sub-titles
# provided in the templates as arguments.
# It is called in the application.html.erb
  def full_title(title)
    base_title = "Archtexx"

    if title.blank?
  	  return base_title
    else
  	  "#{base_title} | #{title}"
    end
  end

end
