class CreateAirlines < ActiveRecord::Migration[7.0]
  def change
    create_table :airlines do |t|
      t.string :name, null: false, comment: "航空会社名"
      t.string :image_url, null: false, comment: "画像URL"
      t.string :slug

      t.timestamps
    end
  end
end
