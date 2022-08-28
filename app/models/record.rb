class Record < ApplicationRecord
 belongs_to :admin
 belongs_to :customer
 has_many :comments
 
end
