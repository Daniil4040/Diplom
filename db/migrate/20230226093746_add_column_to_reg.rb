class AddColumnToReg < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :is_active, :boolean, default: :false
    add_column :users, :code_active, :string
  end
end
