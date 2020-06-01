class Restaurant < ApplicationRecord
validates :name, :address, :description, :style, :recent,:localisation, :photo, presence: true
has_one_attached :photo

end

