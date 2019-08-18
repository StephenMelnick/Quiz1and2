class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :name
      t.text :description
      t.string :date
      t.timestamps
    end
  end
end
