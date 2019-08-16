class AddLabelTotalWeight < ActiveRecord::Migration[5.2]
  def change
    add_column :labels, :total_weight, :integer
  end
end
