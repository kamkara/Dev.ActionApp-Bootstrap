class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles, id: :uuid do |t|
      t.string :heroImg
      t.string :title
      t.text :content
      t.date :write_date
       t.string :status
      t.string :slug
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
