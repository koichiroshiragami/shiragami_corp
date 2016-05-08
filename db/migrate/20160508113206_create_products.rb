class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
        t.integer      :category_id
        t.text        :title
        t.text        :shorttext
        t.text        :fulltext
        t.timestamps
    end
  end
end
