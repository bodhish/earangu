ActiveAdmin.register Poem do
  permit_params :title, :description, :poet_id, :category_id, :youtube_link, :cover_image

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :poet
    column :category
    column :cover_image
    column :created_at
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :title
      f.input :youtube_link
      f.input :description, as: :trix
      f.input :poet, as: :select
      f.input :category, as: :select
      f.input :cover_image, as: :file
    end
    f.actions
  end

end
