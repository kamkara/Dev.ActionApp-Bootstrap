class AddCitytownToBememberships < ActiveRecord::Migration[7.0]
  def change
    add_column :bememberships, :citytown, :string
  end
end
