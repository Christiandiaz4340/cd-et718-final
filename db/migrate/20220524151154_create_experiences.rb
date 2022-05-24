class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.integer :user_id
      t.string :title, null: false
      t.string :url
      t.text :note
      t.date :from, null: false
      t.date :to

      t.timestamps
    end

    add_index :experiences, :user_id
  end
end
