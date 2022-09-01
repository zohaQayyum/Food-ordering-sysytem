ActiveAdmin.register Restaurant do
  scope :OpenRestaurants
  permit_params :contact, :name 

  index do
    selectable_column
    column :contact
    column :name 
    column :status do|object| 
      object.status? ? 'Open' : 'Closed'
    end
    column :created_at 
    column :menus
    column "Manager", :employee_name
    column :manager do |employee|
      employee.manager.first_name
  end
    actions
  end 
 
end
 