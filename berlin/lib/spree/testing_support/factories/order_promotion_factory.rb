FactoryBot.define do
  factory :order_promotion, class: OrderPromotion do
    order
    promotion
  end
end
