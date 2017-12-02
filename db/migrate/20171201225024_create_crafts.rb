class CreateCrafts < ActiveRecord::Migration[5.0]
  def change
    create_table :crafts do |t|
      t.column :title, :string
      t.column :dcription, :string
      t.column :price, :integer

      t.timestamps
    end
  end
end
