class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs, id: :uuid do |t|
      t.string :title
      t.text :content
      t.string :slug
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
