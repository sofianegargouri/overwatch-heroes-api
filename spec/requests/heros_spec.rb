# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Heros', type: :request do
  describe 'GET /heros' do
    it 'retrieves heros' do
      create(:hero)
      get heros_path
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body).size).to eq(1)
    end

    describe 'pagination' do
      describe 'per_page' do
        it :limits_results do
          20.times do
            create(:hero)
          end
          get heros_path(per_page: 5)
          expect(response).to have_http_status(200)
          expect(JSON.parse(response.body).size).to eq(5)
        end

        it :returns_nothing_when_out_of_scope do
          20.times do
            create(:hero)
          end
          get heros_path(per_page: 5, page: 5)
          expect(response).to have_http_status(200)
          expect(JSON.parse(response.body).size).to eq(0)
        end
      end
    end
  end
end
