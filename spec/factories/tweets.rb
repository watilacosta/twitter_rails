FactoryBot.define do
  factory :tweet do
    body { "MyText" }
    user { nil }
    tweet_original_id { 1 }
  end
end
