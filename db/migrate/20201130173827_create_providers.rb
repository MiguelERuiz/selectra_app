class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.string :code
      t.string :name
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
