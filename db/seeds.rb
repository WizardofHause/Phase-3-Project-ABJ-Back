puts "Planting seeds... 👨🏻‍🌾"

10.times do
    Item.create(
        name: Faker::Commerce.product_name,
        price: Faker::Commerce.price(range: 0..500.0, as_string: false),
        description: Faker::Lorem.sentence,
        image: Faker::LoremFlickr.image,
        # brand_name: Faker::Commerce.brand,
        category: Faker::Commerce.department(max: 1, fixed_amount: true)
    )
end

10.times do
    User.create(
        username: Faker::Twitter.screen_name,
        location: Faker::Address.state,
        image: Faker::Avatar.image
    )
end

50.times do
    Review.create(
        item_id: rand(0..10),
        user_id: rand(0..10),
        star_rating: rand(0..5),
        comment: Faker::Lorem.paragraph_by_chars(number: 100, supplemental: false)
    )
end

puts "Grow baby grow! 🌱"
