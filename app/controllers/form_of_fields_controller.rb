class FormOfFieldsController < ApplicationController

  def index
    @form_of_fields = FormOfFields.all
  end

  def show

  end

  def new
    @form_of_fields = FormOfFields.new
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
