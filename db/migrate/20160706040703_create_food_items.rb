class CreateFoodItems < ActiveRecord::Migration[5.0]
	def change
		reversible do |dir|
			create_table :food_items do |t|
				t.string :name
				t.text :description
				t.decimal :price
				t.string :image_url
				t.belongs_to :section, index: true

				t.timestamps
			end
		end
	end
end
