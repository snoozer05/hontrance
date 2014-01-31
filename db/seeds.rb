require 'nokogiri'
require 'open-uri'

last_quote = Quote.last
start_id = last_quote ? (last_quote.booklog_id + 1) : 1
end_id = start_id + 1000
start_id.upto(end_id).each do |booklog_id|
  begin
    doc = Nokogiri::HTML(open("http://booklog.jp/quote/#{booklog_id}"))
    body = doc.xpath("//blockquote").text
    book_title = doc.css(".citeArea").children[1].children[1].text
    booklog_url = doc.css(".quoteBook").attr("href").value
    quote = Quote.create(body: body, book_title: book_title, booklog_url: booklog_url, booklog_id: booklog_id)
    p quote
  rescue => e
    p e
  end
end
