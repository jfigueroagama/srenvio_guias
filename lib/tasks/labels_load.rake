require 'json'

namespace :load do
    desc "Load LABELS"
    task :labels => :environment do
        label_guardadas = 0
        labels_list = JSON.parse(File.read('labels.json'))
        labels_list.each do |label|
            label = Label.new(:tracking_number => label['tracking_number'],
                     :carrier => label['carrier'],
                     :length => label['parcel']['length'],
                     :width => label['parcel']['width'],
                     :height => label['parcel']['height'],
                     :weight => label['parcel']['weight'],
                     :distance_unit => label['parcel']['distance_unit'],
                     :mass_unit => label['parcel']['mass_unit'],
                     :total_weight => 0,
                     :overweight => 0)
            label.save!
            label_guardadas += 1
        end
        puts "Se guardaron #{label_guardadas} guias en la base de datos"
    end
end