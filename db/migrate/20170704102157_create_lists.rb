class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :url
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
