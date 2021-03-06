FactoryBot.define do
  factory :item do
    sequence(:title) { |n| "TEST_NAME#{n}"}
    sequence(:item1) { |n| "TEST_NAME#{n}"}
    sequence(:item2) { |n| "TEST_NAME#{n}"}
    sequence(:body1) { |n| "TEST_NAME#{n}"}
    sequence(:feature1) { |n| "TEST_NAME#{n}"}
    sequence(:feature2) { |n| "TEST_NAME#{n}"}
    sequence(:feature3) { |n| "TEST_NAME#{n}"}
    sequence(:feature4) { |n| "TEST_NAME#{n}"}
    sequence(:feature5) { |n| "TEST_NAME#{n}"}
    sequence(:feature6) { |n| "TEST_NAME#{n}"}
    sequence(:rate1) { |n| n}
    sequence(:rate2) { |n| n}
    sequence(:rate3) { |n| n}
    sequence(:rate4) { |n| n}
    sequence(:rate5) { |n| n}
    sequence(:rate6) { |n| n}
    sequence(:img) {"assets/images/boy1.jpg"}
    sequence(:user_id) { |n| n}
    sequence(:category_id) { |n| n}
  end
end