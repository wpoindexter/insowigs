class WigStyle < ActiveRecord::Base

  belongs_to :wig_length

  has_attached_file :image, path: ':rails_root/public/system/:attachment/:id/:style/:filename', url: '/system/:attachment/:id/:style/:filename'
  validates_attachment :image, content_type: {content_type: %w(image/jpg image/jpeg image/png image/gif)}

end
