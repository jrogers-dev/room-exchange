class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :zipcode
      t.integer :rent
      t.integer :rooms_in_house
      t.integer :size
      t.boolean :private_bathroom
      t.boolean :private_entrance
      t.boolean :cats
      t.boolean :dogs
      t.integer :pet_rent
      t.integer :tenants
      t.string :gender_preference
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5
      t.string :image6
      t.string :image7
      t.string :image8
      t.string :image9
      t.string :image10
      t.string :image11
      t.string :image12
      t.string :image13
      t.string :image14
      t.string :image15
      t.belongs_to :owner, index: true
      t.timestamps
    end
  end
end
