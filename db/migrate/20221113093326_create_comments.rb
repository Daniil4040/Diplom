class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :message
      t.string :user_name
      t.belongs_to :film
      t.timestamps
    end
  end
end
