class AddStatusToBenevol < ActiveRecord::Migration[7.0]
  def change
    add_column :benevols, :status, :string
  end
end
