class CreateShadesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :shades do |t|
      t.string :hex_code
      t.integer :color_id
    end
  end
end
