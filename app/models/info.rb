class Info < ApplicationRecord
  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      info_hash = row.to_hash
      info = Info.where(id: info_hash[:id])
      if info.count == 1
        info.first.update_attributes(info_hash)
      else
        info.create!(info_hash)
      end
    end
  end


  def self.to_csv
    CSV.generate do |csv|
      # all column will be fetch...
        #csv << column_names
      # Specific column will be fetch...
        csv << ['Sr No.', 'name', 'monitor', 'motherboard', 'processor', 'ram', 'hdd', 'cabinet', 'keyboard', 'mouse', 'mousepad', 'camera', 'speaker', 'headphone']
      all.each_with_index do |infos, index|
        puts index
        #csv << infos.attributes.values_at(*column_names)
        csv << [index += 1,
          infos.name, infos.monitor, infos.motherboard, infos.processor, infos.ram, infos.hdd, infos.cabinet, infos.keyboard, infos.mouse, infos.mousepad, infos.camera, infos.speaker, infos.headphone ]
      end
    end
  end
end
