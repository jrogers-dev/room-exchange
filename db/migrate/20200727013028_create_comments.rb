class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :user, index: true
      t.integer :post_id
      t.timestamps
    end
  end
end
