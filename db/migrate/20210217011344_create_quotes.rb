class CreateQuotes < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :author
      t.string :language

      t.timestamps
    end
  end
end
