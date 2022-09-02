class Employee < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"
  belongs_to :manager, class_name: "Employee", optional: true

  belongs_to :restaurant

  def name
    [first_name, last_name].compact.join(' ')
  end

  enum position: {
    Manager: 0,
    Staff: 1
  }
end
