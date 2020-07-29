class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.belongs_to :user, index: true
      t.integer :post_id

      t.timestamps
    end
  end
end
