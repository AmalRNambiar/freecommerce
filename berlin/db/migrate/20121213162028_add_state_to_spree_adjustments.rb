class AddStateToSpreeAdjustments < ActiveRecord::Migration[4.2]
  def change
    add_column :adjustments, :state, :string
    remove_column :adjustments, :locked
  end
end
