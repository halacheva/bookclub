class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :book, null: false
      t.belongs_to :user, null: false
      t.text :title, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
