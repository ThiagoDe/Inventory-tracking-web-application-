class Warehouse < ApplicationRecord
    validates :name, :location, presence: true
    has_many :products,
    foreign_key: :warehouse_id,
    class_name: :Product
end
