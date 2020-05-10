ActiveAdmin.register Poet do
  permit_params :name, :title, :bio, :avatar

  index do
    selectable_column
    id_column
    column :name
    column :title
    column :bio
    column :created_at
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :title
      f.input :bio, as: :trix
      f.input :avatar, as: :file
    end
    f.actions
  end

end
