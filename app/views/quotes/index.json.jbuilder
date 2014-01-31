json.array!(@quotes) do |quote|
  json.extract! quote, :id, :body, :book_title, :booklog_id, :booklog_url
  json.url quote_url(quote, format: :json)
end
