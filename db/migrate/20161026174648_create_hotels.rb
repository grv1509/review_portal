class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
    	t.string			:name
			t.string			:address
			t.string			:lat
			t.string			:lng
			t.string			:map_link
			t.text			  :description

      t.timestamps null: false
    end
  end
end
