class Listing < ApplicationRecord
    has_attached_file :image, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "missing.jpeg"
    validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]

    validates :name, :price, :description, presence: true
    validates :price, numericality: { greater_than: 0 }

    belongs_to :user
    has_many :orders
end
