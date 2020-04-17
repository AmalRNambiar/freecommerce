class AddDisplayOnToSpreePaymentMethods < ActiveRecord::Migration[4.2]
  def self.up
    add_column :payment_methods, :display_on, :string
  end

  def self.down
    remove_column :payment_methods, :display_on
  end
end
