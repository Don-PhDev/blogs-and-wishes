def data_deleter
  User.delete_all
  Blog.delete_all
  Wish.delete_all
end

def data_creator
  User.create!(
    email: "don@gmail.com",
    password: "password",
    password_confirmation: "password"
  )

  20.times do
    Blog.create!(
      title: [Faker::Company.name, Faker::Company.industry].join(" - "),
      author: Faker::Book.author,
      body: Faker::Quote.matz
    )
  end

  20.times do
    Wish.create!(
      name: [Faker::Commerce.brand, Faker::Commerce.product_name].join(" "),
      expected_date: rand(10.days.since(Time.now).to_datetime..1.month.from_now.to_datetime),
      status: "Waiting"
    )
  end
end

data_deleter
data_creator
