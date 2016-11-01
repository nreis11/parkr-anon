class Review < ApplicationRecord
  belongs_to :park

  validates :title, :body, presence: true
end
