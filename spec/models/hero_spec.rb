# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Hero, type: :model do
  describe 'validations' do
    describe 'slug' do
      it :presence do
        expect(build(:hero, slug: nil)).not_to be_valid
      end

      it :uniqueness do
        hero = create(:hero)
        expect(build(:hero, slug: hero.slug)).not_to be_valid
      end
    end
  end
end
