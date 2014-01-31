class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :body
      t.string :book_title
      t.integer :booklog_id
      t.string :booklog_url

      t.timestamps
    end
  end
end
