class Category < ApplicationRecord

  ORDERED_LIST = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  # scope
  default_scope { order(created_at: :desc) }
  scope :list, -> { unscoped.order(priority: :desc) } 
  # relationships
  has_many :devices
  # validation
  validates :code, :name, presence: true
  validates :code, uniqueness: true, length: { in: 4..8 }

end
