class Deal < ApplicationRecord
  has_many :menu_items, as: :menuable, dependent: :destroy
  accepts_nested_attributes_for :menu_items
  has_many :order_items, as: :orderable
  has_many :order_histories
  has_many :deal_items, dependent: :destroy

  validates :name, :time_active_to, :time_active_from, presence: true

  enum deal_type: {
    "Please Select the Type": 0,
    "Customize Deal": 1,
    "Deal": 2,
  }
end
