user_count = User.count

# Generate test account
User.create(
  full_name: "Test Account",
  email: "test@test.com",
  password: "password",
  password_confirmation: "password",
  biography: Faker::Lorem.sentence(word_count: 3),
)

# Generate random user accounts
for i in 1..10
  User.create(
    full_name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
    biography: Faker::Lorem.sentence(word_count: 3),
  )
  p "#{i} Random account created."
end

p "========================================"
p "TOTAL USER CREATED: #{user_count}"
p "========================================"
