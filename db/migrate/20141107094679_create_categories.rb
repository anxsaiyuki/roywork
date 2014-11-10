class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title_en
      t.string :title_ch
      t.string :content
	  t.string :category
      t.string :parent
      t.timestamps
    end
  end
end
