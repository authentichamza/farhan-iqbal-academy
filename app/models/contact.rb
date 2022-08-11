class Contact < ApplicationRecord
  validates_presence_of :name, :email, :message
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
