class MigratePaymentMethodsDisplay < ActiveRecord::Migration[4.2]
  def change
    PaymentMethod.all.each do |method|
      if method.display_on.blank?
        method.display_on = "both"
        method.save
      end
    end

    change_column :payment_methods, :display_on, :string, default: "both"
  end
end
