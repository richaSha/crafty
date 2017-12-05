class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.column :user_id, :integer
      t.column :craft_id, :integer
      t.column :review, :string

      t.timestamps
    end
  end
end
