$ ->
  $("a[data-remote]").on "ajax:success", (e, data, status, xhr) ->
    $("#quote-body").text(data.body)
    $("#view").attr("href", "http://booklog.jp#{data.booklog_url}")
