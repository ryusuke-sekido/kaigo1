class Record < ApplicationRecord
 belongs_to :admin, optional: true
 belongs_to :customer, optional: true
 has_many :comments
end
