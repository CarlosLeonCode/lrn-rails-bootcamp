class Portfolio < ApplicationRecord
    includes Placeholder
    validates_presence_of :title, :body, :main_image, :thumb_image

    scope :ruby_on_rails, -> { where("title LIKE '%Ruby on Rails%'") }
    scope :react, -> { where("title LIKE '%React%'") }

    after_initialize :set_defaults

    def set_defaults
        self.main_image  ||= Placeholder.image_generator(height: 600, width: 400)
        self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
    end
end