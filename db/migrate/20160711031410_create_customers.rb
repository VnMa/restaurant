class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone_number
      t.text :address
      t.text :email
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
