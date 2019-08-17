class Label < ApplicationRecord
    after_create :get_total_weight

    validates_presence_of :tracking_number, :carrier, :length, :width, :height, :weight,
              :total_weight, :mass_unit

    private
    def get_total_weight
        volume_weight = ((length*width*height).to_f/5000).ceil
        if volume_weight > weight
            total = volume_weight
        else
            total = weight
        end
        update_attribute(:total_weight, total)
    end
end
