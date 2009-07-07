# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def page_title 
  title = @page_title ? "| #{@page_title}" : '' 
  %(Good Food #{title}) 
  end 

  def title 
  title = @page_title ? "| #{@page_title}" : '' 
  %(Good Food #{title}) 
  end 

    def page_classes
    page_class = @page_classes ? "#{@page_classes}" : '' 
    %(class="#{page_class} ") 
    end 
    
    def page_template
        page_template = @page_template ? "#{@page_template}" : 'id="custom-doc" class="yui-t6"'
    end
  
  # Show the local time
  def tz(time_at)
    Time.zone.utc_to_local(time_at.utc)
  end
  
  def menu_boards
    
  end
  
  def toggle_div(div) 
      update_page do |page| 
          page[div].toggle 
          page[div].visual_effect :highlight 
      end 
  end 
  
  def photo_for(user, size=:thumb)
    if user.profile_photo
      src = user.profile_photo.public_filename(size)
    else
      src = 'user_placeholder.png'
     end
     link_to(image_tag(src), user_path(user))
  end
  
end
