# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(->
  # hide the "out of country" field if days <= 5
  days_input = $('#request_days')

  return unless days_input

  check_days = ->
    $('#out_of_country_container').css
      display: if days_input.val() > 5 then 'block' else 'none'

  $('#request_days').on('input', check_days)

  check_days()
)
