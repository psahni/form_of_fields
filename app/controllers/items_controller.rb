class ItemsController < ApplicationController


  before_filter :find_item, :except => [:new, :create, :index]

  def index
    @items = Item.all
  end

  def show

  end

  def new
    @item = Item.new
    @form_of_field = @item.form_of_fields.build
    @form_of_field_option = @form_of_field.form_field_options.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to [:items], notice: "Item has been created successfully"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @item.update_attributes(item_params)
      redirect_to [@item], notice: "Item has been updated successfully"
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to [:items], notice: "Item has been destroyed successfully"
    else
      redirect_to [@item], notice: "Item can not be destroyed"
    end
  end


  private

  def item_params
    params.require(:item).permit(:id, :name, form_of_fields_attributes: [:id, :field_label, :field_type, :_destroy,
                                                                    form_field_options_attributes: [:id, :field_label, :_destroy]
                                                                  ]
    )
  end

  def find_item
    @item = Item.find(params[:id])
  end
end
