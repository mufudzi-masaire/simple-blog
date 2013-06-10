module ApplicationHelper
  
  def full_title(page_title)
    site_name = "Blog"
    if page_title.empty?
      site_name 
    else
      "#{site_name} | #{page_title}"
    end 
  end
  
end
