class Author < ApplicationRecord
  has_many :books

  validates :first_name, :last_name, :country, :genre, presence: true
end