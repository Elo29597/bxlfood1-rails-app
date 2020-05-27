class Restaurant < ApplicationRecord
validates :name, :address, :description, :style, :localisation, :photo, presence: true
has_one_attached :photo

end

