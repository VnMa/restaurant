class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.text :name
      t.timestamps
    end
  end
end
