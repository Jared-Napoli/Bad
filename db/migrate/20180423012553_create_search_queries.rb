class CreateSearchQueries < ActiveRecord::Migration[5.2]
  def change
    create_table :search_queries do |t|
      t.string :query_string
      t.text :query_response

      t.timestamps
    end
  end
end
