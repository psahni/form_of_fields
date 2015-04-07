class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show

  end

  def new
    @item = Item.new
    @item.form_of_fields.build
  end

  def create
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
