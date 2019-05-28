class Prerequisite < ApplicationRecord
    has_and_belongs_to_many :courses
    
    
    def name
      Course.find(self.id).name
    end
end
