FactoryGirl.define do
  factory :message do
    body "This is the body of the message"
    to "9716789823"
    from "5038223444"
  end
end
