require 'nokogiri'
require 'open-uri'

last_quote = Quote.last
start_id = last_quote ? (last_quote.booklog_id + 1) : 1
end_id = start_id + 1000
start_id.upto(end_id).each do |booklog_id|
  begin
    doc = Nokogiri::HTML(open("http://booklog.jp/quote/#{booklog_id}"))
    body = doc.xpath("//blockquote").text
    book_info = doc.at('.quote-cite a')
    book_title = book_info.text
    booklog_url = book_info['href']
    quote = Quote.create(body: body, book_title: book_title, booklog_url: booklog_url, booklog_id: booklog_id)
    p quote
    sleep(10)
  rescue => e
    p e
  end
end
