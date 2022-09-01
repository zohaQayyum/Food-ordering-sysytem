class MenuItem < ApplicationRecord
	belongs_to :menu
	belongs_to :menuable, polymorphic: true
	has_many :menu_add_ons
	has_many :add_ons, through: :menu_add_ons
	has_many :menu_options
	has_many :options, through: :menu_options
end
