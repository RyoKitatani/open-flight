class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title, null: false, comment: "レビュータイトル"
      t.string :description, comment: "コメント"
      t.integer :score, null: false, default: 0, comment: "レビュー"
      t.belongs_to :airline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
