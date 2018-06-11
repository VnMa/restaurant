class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :value
      t.string :status
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
