module ApplicationHelper

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s, f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def display_flash
    message = ''
    flash.each do |key, value|
      message+= "<div class='alert alert-#{key}' timeout>"
      message+=value
      message+='</div>'
    end
    message.html_safe
  end

  def check_box_or_radio_button?(field_type)
    ['check_box', 'radio_button'].include?(field_type)
  end
end
