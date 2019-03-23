# frozen_string_literal: true

url = 'https://s3.eu-central-1.amazonaws.com/dojomadness.com/code-challenge/heros'
uri = URI(url)
response = Net::HTTP.get(uri)
data = JSON.parse(response).deep_symbolize_keys[:data]

data.each do |db_hero|
  Hero.create(name: db_hero[:attributes][:name],
              db_id: db_hero[:id],
              slug: db_hero[:attributes][:slug],
              image_portrait_url: db_hero[:attributes][:image_portrait],
              image_splash_url: db_hero[:attributes][:image_splash],
              image_card_background_url: db_hero[:attributes][:image_card_background])
end
