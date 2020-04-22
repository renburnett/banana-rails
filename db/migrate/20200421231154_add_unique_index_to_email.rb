# Prevents edge case where two of the same email addresses are saved to two different users
# https://thoughtbot.com/blog/the-perils-of-uniqueness-validations
class AddUniqueIndexToEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :donors, :email, unique: true
    add_index :clients, :email, unique: true
  end
end
