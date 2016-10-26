class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
			t.integer			:user_id
			t.integer			:hotel_id
			t.integer			:stars
			t.text			  :label
			t.text			  :description

      t.timestamps null: false
    end

    add_index :reviews, :user_id
    add_index :reviews, :hotel_id
  end
end
