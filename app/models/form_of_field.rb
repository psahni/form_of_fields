class FormOfField < ActiveRecord::Base

  ## ONLY FOR RADIOBOXES AND CHECKBOXES

  has_many :form_field_options

  accepts_nested_attributes_for :form_field_options,
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['field_label'].blank? }

  attr_accessor :_destroy

  validates :field_type, :field_label, :presence => true

end
