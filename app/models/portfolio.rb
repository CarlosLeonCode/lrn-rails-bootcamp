class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    scope :ruby_on_rails, -> { where("title LIKE '%Ruby on Rails%'") }
    scope :react, -> { where("title LIKE '%React%'") }
end