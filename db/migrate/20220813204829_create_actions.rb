class CreateActions < ActiveRecord::Migration[7.0]
  def change
    create_table :actions, id: :uuid do |t|
      t.string :title
      t.text :content
      t.string :objectif
      t.string :status
      t.string :slug
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
