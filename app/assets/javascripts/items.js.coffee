$(document).on 'click', 'form .remove_fields', (event) ->
  $(this).prev('input[type=hidden]').val('1')
  $(this).closest('.form_fields').slideUp()
  event.preventDefault()

$(document).on 'click', 'form .add_fields', (event) ->
  time = new Date().getTime()
  regexp = new RegExp($(this).data('id'), 'g')
  $(this).before($(this).data('fields').replace(regexp, time)).hide().slideDown();
  event.preventDefault()

$(document).on "click", ".select_field_type", ->
  if(['radio_button', 'check_box'].indexOf($(this).val())!=-1)
    $("#checkbox_radio_labels").slideDown()
  else
    $("#checkbox_radio_labels").slideUp()

