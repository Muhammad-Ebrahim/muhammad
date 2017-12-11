class AddSlugToEssays < ActiveRecord::Migration[5.1]
  def change
    add_column :essays, :slug, :string
    add_column :essays, :unique, :true
  end
end
