class Author < ApplicationRecord
  has_many :authors_books
  has_many :books, through: :authors_books

  validates_uniqueness_of :first_name, scope: :last_name

  def full_name
    "#{first_name} #{last_name}"
  end
end
