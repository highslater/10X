# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->

    $("input[name='page[title]']").on("keyup", showTitleCount)
    $("input[name='page[title]']").trigger("keyup")

    $("textarea[name='page[body]']").on("keyup", showBodyCount)
    $("textarea[name='page[body]']").trigger("keyup")


characterCount = (e) ->
    (" characters : #{$(e.target).val().length}")
    
showTitleCount = (e) ->
    $("[data-behavior='title-count']").text(characterCount(e))

showBodyCount = (e) ->
    $("[data-behavior='body-count']").text(characterCount(e))

