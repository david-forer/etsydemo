class Listing < ApplicationRecord
    has_attached_file :image, styles: { medium: "150x", thumb: "100x100>" }, default_url: "missing.jpeg"
    validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end
