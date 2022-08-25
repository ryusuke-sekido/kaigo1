class Record < ApplicationRecord
 belongs_to :admin
 belongs_to :user
 has_many :comments
 
end
