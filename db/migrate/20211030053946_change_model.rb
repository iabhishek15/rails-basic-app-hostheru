class ChangeModel < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :email, :string)
    add_column(:users, :age, :integer)
    add_column(:users, :first_name, :string)
    add_column(:users, :last_name, :string)
    rename_column(:users, :name, :full_name)
    remove_column(:users, :confirm_password, :string)
  end
end
