class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
  validates_presence_of :title, :author
end
