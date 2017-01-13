class AddTwoFactorColumns < ActiveRecord::Migration
  def change
    add_column :users, :pin, :string
    add_column :users, :phone, :integer    
  end
end
