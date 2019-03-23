# frozen_string_literal: true

FactoryBot.define do
  factory :hero do
    sequence :db_id, &:to_s
    name { Faker::Games::Overwatch.hero }
    slug { name.downcase.strip.tr(' ', '-').gsub(/[^\w-]/, '') }
    image_portrait_url { Faker::Placeholdit.image }
    image_splash_url { Faker::Placeholdit.image }
    image_card_background_url { Faker::Placeholdit.image }
  end
end
