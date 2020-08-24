class Item < ApplicationRecord
    enum category: { cake: 0, baked_sweets: 1, pudding: 2, candy: 3 }
    
    validates :name, presence: true, length: { maximum: 50 }
    validates :caption, presence: true, length: { maximum: 255 }
    validates :image, presence: true
    validates :price, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 10000000 }
end
