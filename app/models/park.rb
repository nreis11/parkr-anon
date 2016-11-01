class Park < ApplicationRecord
  belongs_to :city
  has_many :reviews

  validates :name, :description, presence: true
end
