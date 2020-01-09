# class SorceryCore < ActiveRecord::Migration[5.2]
#   def change
#     create_table :users do |t|
#       t.string :,        null: false
#       t.string :hurigana,       null: false
#       t.string :email,            null: false
#       t.integer :phone_number,  null: false
#       t.string :address,        null: false
#
#       t.string :crypted_password
#       t.string :salt
#
#       t.timestamps                null: false
#     end
#
#     add_index :users, :email, unique: true
#   end
# end

class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :last_name,        null: false
      t.string :first_name,       null: false
      t.string :email,            null: false
      t.string :crypted_password
      t.string :salt

      t.timestamps                null: false
    end

    add_index :users, :email, unique: true
  end
end