class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :title
      t.string :tab_title
      t.text :description
      t.integer :sort_order

      t.timestamps
    end
  end
end
