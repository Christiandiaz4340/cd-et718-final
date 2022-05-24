class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.integer :user_id
      t.string :name, null: false
      t.integer :level, default: 0, null: false

      t.timestamps
    end

    add_index :languages, :user_id
  end
end
