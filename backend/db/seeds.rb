# frozen_string_literal: true

require 'faker'

def username
  [*('a'..'z'), *('0'..'9')].shuffle[0,8].join
end

(1..100).each do
  User.create!(
    username: username,
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password' 
  )
end

(1..100).each do
  name = Faker::Commerce.product_name
  slug = Faker::Number.hexadecimal + '-' + name.downcase.dasherize

  Item.create!(
    title: name,
    slug: slug,
    description: Faker::Hipster.paragraph,
    image: Faker::LoremFlickr.image,
    favorites_count: rand(1..100),
    user_id: rand(1..100)
  )
end

user_ids = User.pluck(:id)
item_ids = Item.pluck(:id)

(1..100).each do
  Comment.create!(
    body: Faker::Hipster.sentence,
    user_id: user_ids.sample,
    item_id: item_ids.sample
  )
end
