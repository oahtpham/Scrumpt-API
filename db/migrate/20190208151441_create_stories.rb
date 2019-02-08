class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.integer :user_id
      t.integer :sprint_id
      t.integer :stage_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
