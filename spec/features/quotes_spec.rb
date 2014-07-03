require 'spec_helper'

describe "Quotes" do
  describe "GET /" do
    before do
      Quote.create(body: '人は、勇気を持って決断した数だけ、強くなり、その分だけ大きく成長できるのです。',
                   book_title: '心晴日和', booklog_url: '/item/1/4344017919', booklog_id: '12345')
      visit root_path
    end

    it "shows a quote" do
      expect(page).to have_content '人は、勇気を持って決断した数だけ、強くなり、その分だけ大きく成長できるのです。'
    end

    it "has valid link to booklog" do
      expect(page).to have_xpath "//a[@href = 'http://booklog.jp/item/1/4344017919']"
    end
  end
end
