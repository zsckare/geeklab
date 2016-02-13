# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on "ajax:success", "form#items-form",(ev,data)->
	console.log data
	$("#items-container").append("<tr><td> #{data.device}</td> <td>#{data.brand}</td><td>#{data.model}</td><td>#{data.details}</td><td>#{data.price}</td></tr>")

$(document).on "ajax:error", "form#items-form",(ev,data)->
	console.log data