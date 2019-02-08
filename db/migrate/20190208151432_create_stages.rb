class CreateStages < ActiveRecord::Migration[5.2]
  def change
    create_table :stages do |t|
      t.integer :stage_order
      t.string :stage_name

      t.timestamps
    end
  end
end
