class AddIndexesToReturnItems < ActiveRecord::Migration[5.0]
  def change
    add_index :return_items, :return_authorization_id
    add_index :return_items, :inventory_unit_id
    add_index :return_items, :reimbursement_id
    add_index :return_items, :exchange_variant_id
    add_index :return_items, :preferred_reimbursement_type_id
    add_index :return_items, :override_reimbursement_type_id
  end
end
