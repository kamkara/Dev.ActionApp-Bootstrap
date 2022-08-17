class AddCustonFieldToBememberships < ActiveRecord::Migration[7.0]
  def change
    add_column :bememberships, :nationality, :string
    add_column :bememberships, :matrimonial, :string
    add_column :bememberships, :profession, :string
    add_column :bememberships, :employer, :string
    add_column :bememberships, :source, :string
  end
end
