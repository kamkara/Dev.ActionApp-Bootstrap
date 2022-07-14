class CreateProjets < ActiveRecord::Migration[7.0]
  def change
    create_table :projets, id: :uuid do |t|
      t.string :title
      t.string :heroImg
      t.text :content
      t.date :start_date
      t.string :slug
      t.string :status
      t.integer :amount
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
