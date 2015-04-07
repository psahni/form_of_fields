$(document).on 'click', 'form .remove_fields', (event) ->
  $(this).prev('input[type=hidden]').val('1')
  $(this).closest('.form_fields').slideUp()
  event.preventDefault()

$(document).on 'click', 'form .add_fields', (event) ->
  time = new Date().getTime()
  regexp = new RegExp($(this).data('id'), 'g')
  console.log(regexp);
  console.log(time);
  $(this).before($(this).data('fields').replace(regexp, time)).hide().slideDown();
  event.preventDefault()