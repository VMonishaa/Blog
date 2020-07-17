class Article < ApplicationRecord
 belongs_to :user
 has_many :comments, dependent: :destroy
 validates :title, presence :true , length: { minimun :5 }
 validates :text, presence :true
end
