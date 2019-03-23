# frozen_string_literal: true

class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :db_id
      t.string :name
      t.string :slug
      t.string :image_portrait_url
      t.string :image_splash_url
      t.string :image_card_background_url

      t.timestamps
    end
  end
end
