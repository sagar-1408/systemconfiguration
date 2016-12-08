class AddToInfoColumnHeadphone < ActiveRecord::Migration[5.0]
  def change
    add_column :infos, :headphone, :string
  end
end
