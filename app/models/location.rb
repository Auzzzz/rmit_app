class Location < ApplicationRecord
     has_and_belongs_to_many :courses

  validates :name,
    presence: true,
    length: {
      minimum: 10,
      maximum: 10
    },
   
    uniqueness: {
      case_sensitive: false
    }
end
