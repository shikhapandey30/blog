class AddPartNumberToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :last_name, :string
  end
end
