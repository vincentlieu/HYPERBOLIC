def total_count()
  #Total counts
  user_count = User.count
  category_count = Category.count
  brand_count = Brand.count
  condition_count = Condition.count
  listing_count = Listing.count

  p "=================TOTAL=================="
  p "CLOTHING CATEGORIES CREATED: #{category_count}"
  p "BRANDS CREATED: #{brand_count}"
  p "CONDITIONS CREATED: #{condition_count}"
  p "USERS CREATED: #{user_count}"
  p "LISTING CREATED: #{listing_count}"
  p "========================================"
end

clothing_category = ["Accessories", "Bottoms", "Headwear", "Outerwear", "Shirt", "T-Shirt", "Bags"]
brands = ["Adidas", "Nike", "Supreme", "Off-White", "Palace", "Bape", "Kaws"]
conditions = ["New with tags", "New without tags", "New with box", "New without box", "New with defects", "Pre-owned"]

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

for i in 1..30
  Listing.create(
    user_id: rand(1..User.count),
    condition_id: rand(1..Condition.count),
    category_id: rand(1..Category.count),
    brand_id: rand(1..Brand.count),
    title: Faker::Lorem.sentence(word_count: 3),
    price: rand(1000),
    description: Faker::Lorem.sentence(word_count: 3),
  )
end

total_count()
