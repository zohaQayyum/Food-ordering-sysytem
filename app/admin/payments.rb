ActiveAdmin.register Payment do
  permit_params :method, :date

  form do |f|
    f.inputs "Edit My Model" do
      f.input :method, as: :select, collection: Payment.methods.keys
      f.input :date
    end
    f.actions
  end

  filter :method, as: :select, collection: Payment.methods
  filter :date

end
