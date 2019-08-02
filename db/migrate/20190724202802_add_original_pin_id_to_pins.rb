class AddOriginalPinIdToPins < ActiveRecord::Migration[5.2]
  def change
    add_column :pins, :original_pin_id, :integer
  end
end
