Handlebars.registerHelper "dateFormat", (context, block) ->
  if window.moment
    f = block.hash.format or "YYYY-MM-DD"
    return moment(Date(context)).format(f)
  else
    return context #  moment plugin not available. return data as is.
