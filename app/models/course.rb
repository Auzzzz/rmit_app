class Course < ApplicationRecord

  has_and_belongs_to_many :locations, dependent: :destroy
  has_and_belongs_to_many :categories, dependent: :destroy
  has_and_belongs_to_many :prerequisites 

end
