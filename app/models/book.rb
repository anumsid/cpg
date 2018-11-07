class Book < ApplicationRecord
  belongs_to :format
  has_many :authors_books
  has_many :authors, through: :authors_books

  validates :title, presence: true

  validates :release_date, presence: true
  validates_with BookValidator
