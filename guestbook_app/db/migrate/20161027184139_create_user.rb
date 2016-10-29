class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :occupation
      t.string :city
      t.string :entry

      t.timestamps
    end
  end
end
