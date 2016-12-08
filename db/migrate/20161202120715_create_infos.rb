class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|
      t.string :name
      t.string :monitor
      t.string :motherboard
      t.string :processor
      t.string :ram
      t.string :hdd
      t.string :cabinet
      t.string :keyboard
      t.string :mouse
      t.string :mousepad
      t.string :camera
      t.string :speaker

      t.timestamps
    end
  end
end
