class Rating < ApplicationRecord
  has_one :order

  def name 
    "#{rating}"
  end 
end
