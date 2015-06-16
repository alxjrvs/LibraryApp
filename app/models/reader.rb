class Reader < ActiveRecord::Base
  has_many :checkouts
  validates :full_name, presence: true
end
