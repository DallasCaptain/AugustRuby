FactoryBot.define do
  factory :sandwhich, class: 'Sandwhiche' do
    bread { 'MyString'}
    cheese { "MyString" }
    meat { "MyString" }


    trait :sub do
      bread { 'French'}
      meat { 'ham' }
    end

    trait :club do
      bread { 'white' }
      meat { 'Bacon' }
    end

    trait :spicy do
      cheese { 'PepperJack'}
    end

  end
end
