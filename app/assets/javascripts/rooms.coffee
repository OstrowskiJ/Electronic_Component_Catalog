# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $shoutboxes = $('#shoutboxes')
  $shoutboxes.scrollTop $shoutboxes.prop('scrollHeight')
  $('#shoutbox_input').focus()

$(document).on 'keypress', '#shoutbox_input', (e) ->
  if e.keyCode == 13 and e.target.value
    App.room.speak(e.target.value)
    e.target.value = ''
    e.preventDefault()
