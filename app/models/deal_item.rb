class DealItem < ApplicationRecord
  belongs_to :deal
  belongs_to :dealable, polymorphic: true
end
