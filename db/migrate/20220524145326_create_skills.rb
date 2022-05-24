class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.integer :user_id
      t.string :title, null: false
      t.integer :level, default: 0, null: false

      t.timestamps
    end

    add_index :skills, :user_id
  end
end
