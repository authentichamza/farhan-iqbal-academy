class AddPhoneToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :phone_number, :string
    remove_column :contacts, :type, :string
  end
end
