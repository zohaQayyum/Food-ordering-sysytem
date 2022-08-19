class MenuAddOn < ApplicationRecord
  belongs_to :add_on
  belongs_to :menu_item
end
 