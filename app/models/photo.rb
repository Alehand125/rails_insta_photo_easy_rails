class Photo < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: {large: "600x600>",medium: "300x300>", thumb: "100x100>"}

  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment :image, presence: true
  # validates_attachment_size :image, :less_than => 5.megabytes
  # validates_attachment :image, presence: true, content_type: "image/jpeg", size: {in: 0..10000.kilobytes}
    # validates_attachment :avatar,
    #                      content_type: ["image/jpeg", "image/gif", "image/png"]


end
