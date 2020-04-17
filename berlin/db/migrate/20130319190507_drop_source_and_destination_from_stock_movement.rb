class DropSourceAndDestinationFromStockMovement < ActiveRecord::Migration[4.2]
  def up
    change_table :stock_movements do |t|
      t.remove_references :source, polymorphic: true
      t.remove_references :destination, polymorphic: true
    end
  end

  def down
    change_table :stock_movements do |t|
      t.references :source, polymorphic: true
      t.references :destination, polymorphic: true
    end
  end
end