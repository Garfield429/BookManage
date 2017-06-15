class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, limit: 50
      t.string :author, limit: 20
      t.string :descript, limit: 100
      t.string :publisher, limit: 50
      t.integer :page_number

      t.timestamps
    end
  end
end
