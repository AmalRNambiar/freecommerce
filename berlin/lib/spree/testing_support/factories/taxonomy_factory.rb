FactoryBot.define do
  factory :taxonomy, class: Taxonomy do
    sequence(:name) { |n| "taxonomy_#{n}" }
  end
end
