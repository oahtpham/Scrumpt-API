class CreateSprints < ActiveRecord::Migration[5.2]
  def change
    create_table :sprints do |t|
      t.string :sprint_name
      t.datetime :deadline
      t.string :color
      t.boolean :display
      t.timestamps
    end
  end
end
