class Admission < ApplicationRecord
	validates_presence_of :name
  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  enum medium: { ON_SITE: 0, ONLINE: 1, HOME_TUTION: 2 }
end
