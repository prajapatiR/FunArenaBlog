class Photo < ApplicationRecord
  has_attached_file :image
  validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  belongs_to :imageable
end
