ActiveAdmin.register Employee do
  action_item :view_site do
    link_to "Invite Employee", new_employee_invitation_path
  end

  permit_params :position, :manager_id, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :last_name, :invitation_token, :invitation_created_at, :invitation_sent_at, :invitation_accepted_at, :invitation_limit, :invited_by_type, :invited_by_id, :invitations_count, :restaurant_id

  index do
    selectable_column
    column :name
    column :email
    column :position
    column :manager
    column :created_at
    column :restaurant
    actions
  end

  filter :first_name
  filter :last_name
  filter :restaurant
  filter :manager
  filter :email
  filter :created_at

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :restaurant
      row :manager
      row :joining_date
      row :invitation_sent_at
      row :invitation_accepted_at
      row :invited_by
    end
  end
end
