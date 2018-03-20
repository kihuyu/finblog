FactoryBot.define do

  factory :user do
    username "Pep"
    password "blah"
    password_confirmation "blah"
  end

  factory :article do
    title "First Test Article Title"
    text "blah"
    author "Jack"
  end

end
