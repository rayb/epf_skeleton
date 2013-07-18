Ember.TextFieldTypeahead = Ember.TextField.extend
  attributeBindings: ["data-provide", "data-items", "data-source"]

$(document).ready ->
  $(".foo_finder").typeahead source: (query, process) ->
    jQuery.ajax
      url: "/foos_names.json"
      type: "GET"
      data:
        search: query
      dataType: "json"
      success: (json) ->
        debugger
        console.log "it worked!"
        names = _.pluck(json.foos, "name")
        console.log "names: #{names}"
        process names

