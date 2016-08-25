class Item < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { thumb: "100x100#", medium: "150x150#", large: "400x400<"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
