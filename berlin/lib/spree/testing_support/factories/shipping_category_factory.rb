FactoryBot.define do
  factory :shipping_category, class: ShippingCategory do
    sequence(:name) { |n| "ShippingCategory ##{n}" }
  end
end
