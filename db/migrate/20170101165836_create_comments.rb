class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :posts, foreign_key: true
      t.references :users, foreign_key: true
    end
  end
end
