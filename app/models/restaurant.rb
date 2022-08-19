class Restaurant < ApplicationRecord
    has_many :orders 
    has_many :menu_of_categories
    has_many :employees
end 
