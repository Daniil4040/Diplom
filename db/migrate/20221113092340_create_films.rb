class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :name
      t.string :trailer_link 
      t.float :rating 
      t.integer :year
      t.string :director   
      t.string :description   
      t.belongs_to :category, foreign_key: true    
      t.timestamps
    end
  end
end
