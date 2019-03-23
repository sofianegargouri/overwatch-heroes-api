# frozen_string_literal: true

require 'swagger_helper'

describe 'Heros API' do
  path '/heros' do
    get 'Indexes heros' do
      tags 'Heros'
      consumes 'application/json'

      response '200', 'heros fetched' do
        schema type: :array,
               items: { '$ref' => '#/definitions/hero' }

        run_test!
      end
    end
  end

  path '/heros/{id}' do
    get 'Retrieves a hero' do
      tags 'Heros'
      produces 'application/json'
      parameter name: :id, in: :path, type: :string

      response '200', 'name found' do
        let(:id) { create(:hero).slug }
        schema '$ref' => '#/definitions/hero'

        run_test!
      end

      response '404', 'hero not found' do
        let(:id) { 'invalid' }

        run_test!
      end
    end
  end
end
