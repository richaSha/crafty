Craft.destroy_all
Image.destroy_all

50.times do |index|
  crafts = Craft.create!(title: Faker::Name.name,
                price: Faker::Number.between(1, 20),
                dcription: Faker::Lorem.sentence(20, false, 0).chop)
  image = crafts.images.create(photo: open("public/drfault.png"))
end

p "Created #{Craft.count} crafts"
