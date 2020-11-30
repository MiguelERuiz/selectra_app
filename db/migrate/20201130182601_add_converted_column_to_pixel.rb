class AddConvertedColumnToPixel < ActiveRecord::Migration[6.0]
  def change
    add_column :pixels, :converted, :boolean
  end
end
