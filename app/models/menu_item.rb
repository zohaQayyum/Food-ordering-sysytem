class MenuItem < ApplicationRecord
	belongs_to :menu
	belongs_to :menuable, polymorphic: true
	has_many :menu_add_ons
	has_many :add_ons, through: :menu_add_ons
	has_many :menu_options
	has_many :options, through: :menu_options

	def menuable_name
    menuable.name
  end

	def menuable_description
    menuable.description
  end

	def menuable_price
    menuable.price
  end

	def menuable_active_from
    menuable.time_active_from
  end

	def menuable_active_to
    menuable.time_active_to
  end
end
