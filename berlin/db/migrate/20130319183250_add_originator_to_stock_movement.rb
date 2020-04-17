class AddOriginatorToStockMovement < ActiveRecord::Migration[4.2]
  def change
    change_table :stock_movements do |t|
      t.references :originator, polymorphic: true
    end
  end
end
