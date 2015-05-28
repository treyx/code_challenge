class Api::V1::FavoritesController < ApplicationController
  respond_to :json

  def create
    binding.pry
    respond_with :api, :v1, Favorite.create(name: params[:item])
  end
end
