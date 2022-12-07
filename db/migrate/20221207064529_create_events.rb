class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :date_event
      t.string :title 
      t.text :body
      t.timestamps
    end
  end
end
