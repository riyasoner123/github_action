FactoryBot.define do
  factory :manager do
    id {1}
    name {"Shailendra"}
    contact {"9144995889"}
    email {"test@user.com"}
    password {"qwerty"}
    confirmed_at {Time.now  }

    # Add additional fields as required via your User model
  end

  # Not used in this tutorial, but left to show an example of different user types
  # factory :admin do
  #   id {2}
  #   email {"test@admin.com"}
  #   password {"qwerty"}
  #   admin {true}
  # end
end