class AddTermsToBemembership < ActiveRecord::Migration[7.0]
  def change
    add_column :bememberships, :terms, :string
  end
end
