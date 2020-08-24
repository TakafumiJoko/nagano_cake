class ItemsController < ApplicationController
  MAX_DISPLAY_RECOMMEND_ITEMS = 4
  def top
    @items = Item.all.shuffle.take(MAX_DISPLAY_RECOMMEND_ITEMS)
  end

  def index
    @items = Item.paginate(page: params[:page], per_page: 8)
  end

  def show
  end
end
