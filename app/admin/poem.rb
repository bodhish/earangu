ActiveAdmin.register Poem do
  permit_params :title, :description, :poet_id, :category_id

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :poet
    column :category
    column :created_at
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :poet, as: :select
      f.input :category, as: :select
    end
    f.actions
  end

end
