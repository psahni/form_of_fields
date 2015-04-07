class CreateFormFieldOptions < ActiveRecord::Migration
  def change
    create_table :form_field_options do |t|
      t.string :field_label
      t.integer :form_of_field_id

      t.timestamps
    end
  end
end
