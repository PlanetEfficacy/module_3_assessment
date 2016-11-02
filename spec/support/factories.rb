FactoryGirl.define do
  factory :item do
    name { Faker::Commerce.product_name }
    description  { Faker::Hipster.sentence }
    image_url { Faker::Avatar.image }
    created_at { Faker::Time.backward(10, :evening) }
    updated_at { Faker::Time.backward(5, :evening) }
  end
end
