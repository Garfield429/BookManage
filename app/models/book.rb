class Book < ActiveRecord::Base
  validates :name, :author, :descript, :publisher, :page_number, presence: true
  validates :page_number, numericality: { only_integer: true, greater_than: 0 }
end
