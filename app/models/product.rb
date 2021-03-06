class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: :true
  validates :title, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|jpeg|png)\Z}i,
    message: 'must be a URL for GIF, JPG, JPEG or PNG image.'
  }
end
