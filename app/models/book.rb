class Book < ApplicationRecord
  belongs_to :format
  has_and_belongs_to_many :authors

  validates :title, presence: true

  validates :release_date, presence: true
  validates_with BookValidator

end
