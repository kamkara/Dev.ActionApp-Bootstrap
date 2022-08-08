class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities, id: :uuid do |t|
      t.string :title
      t.string :content
      t.string :category
      t.string :slug
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
