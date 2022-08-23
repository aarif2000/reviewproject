class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.integer :employee_id

      t.timestamps
    end
  end
end
