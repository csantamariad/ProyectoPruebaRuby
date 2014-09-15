class Usuario < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "Los passwords no coinciden.", if: :password
  attr_accessible :email, :password, :password_confirmation
end
