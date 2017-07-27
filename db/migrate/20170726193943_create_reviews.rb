class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :product_id
      t.string :user_id
      t.string :profile_name
      t.integer :helpfulness_numerator
      t.integer :helpfulness_denominator
      t.integer :score
      t.integer :time
      t.string :summary
      t.text :text

      t.timestamps
    end
  end
end
