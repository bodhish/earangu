class AddTables < ActiveRecord::Migration[6.0]
  create_table :categories do |t|
    t.string :name, null: false
    t.string :description, null: false

    t.timestamps
  end

  create_table :poets do |t|
    t.string :name, null: false
    t.string :title, null: false
    t.string :bio, null: false

    t.timestamps
  end

  create_table :poems do |t|
    t.string :title, null: false
    t.string :description, null: false
    t.references :poet, foreign_key: true
    t.references :category, foreign_key: true

    t.timestamps
  end
end
