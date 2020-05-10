class AddMoreColumnsForPoemTable < ActiveRecord::Migration[6.0]
  def change
    change_column :poets, :bio, :text
    change_column :poems, :description, :text
    add_column :poems, :youtube_link, :string
  end
end
