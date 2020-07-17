class User < ApplicationRecord
 has_many :articles, dependent: :destroy
 validates :name, presence :true , length: { minimun :5 }
 validates :password, presence :true ,length: {minimun :5} , confirmation: true
 validates :password_confirmation,presence :true , length: {minimum :5}
 validates :email_address,presence :true
 validates_format_of :email_address, :with=> /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
end
