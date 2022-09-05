class Employee < ApplicationRecord
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :manager, class_name: "Employee", optional: true
  belongs_to :restaurant
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"

  def name
    [first_name, last_name].compact.join(' ')
  end

  enum position: {
    Select: 0,
    Manager: 1,
    Staff: 2
  }
end
