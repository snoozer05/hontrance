class Quote < ActiveRecord::Base
  validates :body, presence: true
  validates :book_title, presence: true
  validates :booklog_url, presence: true
  validates :booklog_id, presence: true
end
