class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.text :title
      t.date :StartDate
      t.date :EndDate

      t.timestamps
    end
  end
end
