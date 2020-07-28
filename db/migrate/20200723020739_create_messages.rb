class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :content
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
