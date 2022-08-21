ActiveAdmin.register Admission do
  permit_params :name, :email, :phone_number, :grade, :subject_choice, :medium

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :phone_number
    column :grade
    column :medium
    actions
  end

  filter :name
  filter :email
  filter :phone_number
  filter :grade
  filter :medium
  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :message
    end
    f.actions
  end

end
