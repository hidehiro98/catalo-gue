class AddRanksToCatalogues < ActiveRecord::Migration[5.1]
  def change
    add_column :catalogues, :rank1, :string
    add_column :catalogues, :rank2, :string
    add_column :catalogues, :rank3, :string
    add_column :catalogues, :rank4, :string
    add_column :catalogues, :rank5, :string
    add_column :catalogues, :rank6, :string
    add_column :catalogues, :rank7, :string
  end
end
