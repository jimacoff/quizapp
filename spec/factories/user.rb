FactoryGirl.define do
  factory :user do
    email "test@user.com"
    password "password"
    score 0
    admin false

   end
end
