class CreateBenevols < ActiveRecord::Migration[7.0]
  def change
    create_table :benevols, id: :uuid do |t|
      t.string :full_name
      t.string :role
      t.string :img
      t.string :link_fb
      t.string :link_tw
      t.string :link_ldin

      t.timestamps
    end
  end
end
