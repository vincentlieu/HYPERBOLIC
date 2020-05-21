def total_count()
  #Total counts
  user_count = User.count
  category_count = Category.count
  brand_count = Brand.count
  condition_count = Condition.count
  listing_count = Listing.count

  p "=================TOTAL=================="
  p "CLOTHING CATEGORIES: #{category_count}"
  p "BRANDS: #{brand_count}"
  p "CONDITIONS: #{condition_count}"
  p "USERS: #{user_count}"
  p "LISTING: #{listing_count}"
  p "========================================"
end

clothing_category = ["Accessories", "Bottoms", "Headwear", "Outerwear", "T-Shirt"]
brands = ["Adidas", "Nike", "Supreme", "Off-White", "Bape"]
conditions = ["New with tags", "New without tags", "New with defects", "Pre-owned"]

clothing_category.each do |category|
  if Category.exists?(name: category) == false
    Category.create(
      name: category,
    )
  end
end

brands.each do |brand|
  if Brand.exists?(name: brand) == false
    Brand.create(
      name: brand,
    )
  end
end

conditions.each do |condition|
  if Condition.exists?(name: condition) == false
    Condition.create(
      name: condition,
    )
  end
end

# Generate test account
if User.exists?(full_name: "Test Account", email: "test@test.com") == false
  User.create(
    full_name: "Test Account",
    email: "test@test.com",
    password: "password",
    password_confirmation: "password",
    biography: Faker::Lorem.sentence(word_count: 3),
  )
end

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

#Create listing.
for i in 1..48
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

#Attach image to listings - Ensure that the stock images are attached correctly accordingly to the listing's brand and category.
listings = Listing.all

listings.each do |listing|
  if listing.brand.name
    random = rand(1..3)
    listing.picture.attach(io: File.open("app/assets/images/stock_image/#{listing.brand.name}/#{listing.brand.name}_#{listing.category.name}_#{random}.png"), filename: "#{listing.brand.name}_#{listing.category.name}_#{random}.png", content_type: "image/png")
  end
end

total_count()
