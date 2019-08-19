class AddLabelOverweight < ActiveRecord::Migration[5.2]
  def change
    add_column :labels, :overweight, :integer
  end
end
