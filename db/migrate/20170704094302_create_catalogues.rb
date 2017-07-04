class CreateCatalogues < ActiveRecord::Migration[5.1]
  def change
    create_table :catalogues do |t|
      t.string :name
      t.references :user, foreign_key: true, index: true


      t.timestamps
    end
  end
end
