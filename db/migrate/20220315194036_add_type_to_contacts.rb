class AddTypeToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :type, :string
  end
end
