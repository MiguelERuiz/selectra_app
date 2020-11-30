class CreatePixels < ActiveRecord::Migration[6.0]
  def change
    create_table :pixels, force: true do |t|
      t.integer :provider_id
      t.string :url
      t.string :campaign
      t.string :city

    end
  end
end
