FactoryGirl.define do
  factory :message do
    body "This is the body of the message"
    to "5034562396"
    from "8004523698"
  end
end
