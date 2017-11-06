class User < ApplicationRecord
  has_attached_file :image, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>" }, default_url: "missing.jpeg"
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   validates :name, presence: true

   has_many :listings, dependent: :destroy
   has_many :sales, class_name: "Order", foreign_key: "seller_id"
   has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
end
