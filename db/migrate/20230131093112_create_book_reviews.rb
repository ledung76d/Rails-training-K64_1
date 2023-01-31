class CreateBookReviews < ActiveRecord::Migration[6.0]
  def change
    drop_table :book_reviews, if_exists: true
    create_table :book_reviews do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :review

      t.timestamps
    end
  end
end
