class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    		t.integer :user_id  
    	t.string :author
t.text :body  
t.references :commentable, polymorphic: true, index: true

t.timestamps null: false  

      t.timestamps
    end
  end
end
