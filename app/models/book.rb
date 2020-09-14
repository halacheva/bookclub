class Book < ApplicationRecord
  belongs_to :author, optional: true
  has_many :reviews
end