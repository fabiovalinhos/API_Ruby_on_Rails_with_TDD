FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "Bruce #{n}"}
    name "Bruce Fletcher"
    url "http://example.com"
    avatar_url "http://example.com/avatar"
    provider "github"
  end
end
