class AddFirstNameToBlogs < ActiveRecord::Migration[5.2]
  def change
  	add_column :articles, :first_name, :string
  end
end
