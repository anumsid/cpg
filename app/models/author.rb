class Author < ApplicationRecord
  has_and_belongs_to_many :books

  validates_uniqueness_of :first_name, scope: :last_name

  def full_name
    "#{first_name} #{last_name}"
  end
end
