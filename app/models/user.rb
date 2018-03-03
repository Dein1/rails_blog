class User < ApplicationRecord
  validates :e_mail, :email_format => { :message => 'email is not looking good' }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
