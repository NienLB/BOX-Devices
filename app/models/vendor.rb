class Vendor < ApplicationRecord
  TYPE_LIST = ['Company','Engineer']
  # scope
    # default_scope { order(created_at: :desc) }
     scope :list, -> { unscoped.order(code: :desc) } 
   # relationships
  has_many :devices
  # validation
  validates :name, :phone, :type_vendor, presence: true



end
