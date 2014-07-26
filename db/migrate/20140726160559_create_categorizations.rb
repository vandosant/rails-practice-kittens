class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :category_id
      t.index :category_id
      t.integer :kitten_id
      t.index :kitten_id
    end
  end
end
