class Medium < ActiveRecord::Base
  # paperclip examples:
  #   http://github.com/thoughtbot/paperclip/tree/master
  has_attached_file :av,
    :styles => { :medium => "600x480>", :thumb  => "100x100#" }
    
  def attachment_url
    av.url(:original)
  end
end
