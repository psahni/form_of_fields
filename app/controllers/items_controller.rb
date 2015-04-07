class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show

  end

  def new
    @item = Item.new
    form_of_field = @item.form_of_fields.build
    form_of_field.form_field_options.build
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
