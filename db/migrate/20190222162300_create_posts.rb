class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    	t.text :body
    	t.string :title
    	t.datetime :created_at
    	t.integer :user_id
    	t.integer :category_id
      t.timestamps
    end
  end
end
