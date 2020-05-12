def total_count()
  #Total counts
  user_count = User.count
  category_count = Category.count
  brand_count = Brand.count
  condition_count = Condition.count

  p "========================================"
  p "TOTAL USERS CREATED: #{user_count}"
  p "TOTAL CLOTHING CATEGORIES CREATED: #{category_count}"
  p "TOTAL BRANDS CREATED: #{brand_count}"
  p "TOTAL CONDITIONS CREATED: #{condition_count}"
  p "========================================"
end

clothing_category = ["Accessories", "Bottoms", "Headwear", "Outerwear", "Shirt", "T-Shirt", "Bags"]
brands = ["Adidas", "Nike", "Supreme", "Off-White", "Palace", "Bape", "Kaws"]
conditions = ["New with tags", "New without tags", "New with box", "New without box", "New with defects", "Pre-owned"]

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
end

clothing_category.each do |category|
  Category.create(
    name: category,
  )
end

brands.each do |brand|
  Brand.create(
    name: brand,
  )
end

conditions.each do |condition|
  Condition.create(
    name: condition,
  )
end

total_count()
