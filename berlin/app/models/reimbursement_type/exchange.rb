class ReimbursementType::Exchange < ReimbursementType
  def self.reimburse(reimbursement, return_items, simulate)
    return [] unless return_items.present?

    exchange = Exchange.new(reimbursement.order, return_items)
    exchange.perform! unless simulate
    [exchange]
  end
end
