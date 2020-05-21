class Restaurant < ApplicationRecord
validates :name, :address, :description, :photo, presence: true
has_one_attached :photo

end

