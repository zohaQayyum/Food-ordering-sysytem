ActiveAdmin.register Restaurant do
  scope :OpenRestaurants
  permit_params :contact, :name, :status, :menus

  index do
    selectable_column
    column :contact
    column :name
    column :status do|object|
      object.status? ? 'Open' : 'Closed'
    end
    column :created_at
    column :menus
    column "Manager" do |m|
      if Employee.where(id: m.employee_ids).first.nil?
        Employee.where(id: m.employee_ids).first
      else
        Employee.where(id: m.employee_ids).first.manager
      end
    end
    actions
  end
end
