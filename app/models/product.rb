class Product < ApplicationRecord
  validates :description, :quantity, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  belongs_to :warehouse,
             class_name: :Warehouse
end
