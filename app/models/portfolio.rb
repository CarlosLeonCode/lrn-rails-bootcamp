class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    scope :ruby_on_rails, -> { where("title LIKE '%Ruby on Rails%'") }
    scope :react, -> { where("title LIKE '%React%'") }

    after_initialize :set_defaults

    def set_defaults
        self.main_image     ||= "https://via.placeholder.com/600x400"
        self.thumb_image    ||= "https://via.placeholder.com/350x200"
    end
end