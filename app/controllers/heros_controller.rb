# frozen_string_literal: true

class HerosController < ApplicationController
  before_action :set_hero, only: %i[show]

  # GET /heros
  def index
    @heros = Hero.all.page(params[:page]).per(params[:per_page])

    render json: @heros
  end

  # GET /heros/1
  def show
    render json: @hero
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hero
    @hero = Hero.find_by!(slug: params[:id])
  end
end
