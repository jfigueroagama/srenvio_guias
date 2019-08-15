class CreateLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :labels do |t|
      t.string :tracking_number
      t.string :carrier
      t.decimal :length
      t.decimal :width
      t.decimal :height
      t.decimal :weight
      t.string :distance_unit
      t.string :mass_unit

      t.timestamps
    end
  end
end
