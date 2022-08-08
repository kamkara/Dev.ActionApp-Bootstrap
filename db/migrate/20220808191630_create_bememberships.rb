class CreateBememberships < ActiveRecord::Migration[7.0]
  def change
    create_table :bememberships, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :country
      t.string :contact
      t.string :gender

      t.timestamps
    end
  end
end
