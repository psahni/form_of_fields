class CreateFormOfFields < ActiveRecord::Migration
  def change
    create_table :form_of_fields do |t|
      t.string :field_label
      t.string :field_type
      t.integer :field_option_id
      t.integer :item_id
      t.timestamps
    end
  end
end
