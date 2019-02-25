class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :reviewee_id
      t.integer :reviewer_id
      t.text :body
      t.integer :rating

      t.timestamps
    end

    add_index :reviews, :reviewee_id
    add_index :reviews, :reviewer_id
  end
end
