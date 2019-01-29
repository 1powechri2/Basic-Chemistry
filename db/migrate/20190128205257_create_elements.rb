class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.integer :number
      t.string :name
      t.string :symbol
      t.string :appearance
      t.string :group_block
      t.integer :period
      t.string :element_category
      t.decimal :atomic_weight
      t.string :electron_configuration
      t.string :phase
      t.decimal :melting_point
      t.decimal :boiling_point
      t.string :electronegativity
    end
  end
end
