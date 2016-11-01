class Park < ApplicationRecord
  belongs_to :city
  has_many :reviews
end
