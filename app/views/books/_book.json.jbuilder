json.extract! book, :id, :name, :author, :descript, :publisher, :page_number, :created_at, :updated_at
json.url book_url(book, format: :json)
