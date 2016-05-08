class AddFileToInfos < ActiveRecord::Migration
  def change
    add_column :infos, :file, :string
  end
end
