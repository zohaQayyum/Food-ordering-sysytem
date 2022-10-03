class DealItem < ApplicationRecord
  belongs_to :deal
  belongs_to :dealable, polymorphic: true

  def dealable_name
    dealable.name
  end

  def dealable_id
    dealable.id
  end

  def dealable_price
    dealable.price
  end
end
