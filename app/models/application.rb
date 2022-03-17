class Application < ApplicationRecord   
    belongs_to :gig

    def full_address
        " #{self.creator} #{self.specifications} #{self.description} #{self.techstack} "
    end
end