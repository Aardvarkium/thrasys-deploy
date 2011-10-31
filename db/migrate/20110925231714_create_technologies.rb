class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.text :description
      t.string :title
      t.string :tab_title
      t.integer :sort_order

      t.timestamps
    end
  end
end
