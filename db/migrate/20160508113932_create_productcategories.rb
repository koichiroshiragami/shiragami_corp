class CreateProductcategories < ActiveRecord::Migration
  def change
    create_table :productcategories do |t|
        t.integer      :category_id
        t.text        :category_title
        t.timestamps
    end
  end
end
