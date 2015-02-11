class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.integer :question_id
      t.integer :order_number

      t.timestamps null: false
    end
  end
end
