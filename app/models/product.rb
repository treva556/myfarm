class Product < ApplicationRecord
      # Attributes
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :location, presence: true

  has_one_attached :image


  # Associations (if needed)
  # Example: A product belongs to a seller
  belongs_to :seller, class_name: 'User'

  # You can define other methods, scopes, or associations as needed

end
