# frozen_string_literal: true

class Hero < ApplicationRecord
  validates :slug,
            presence: true,
            uniqueness: true

  def to_param
    slug
  end
end
