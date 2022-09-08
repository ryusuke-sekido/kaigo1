class Comment < ApplicationRecord
  belongs_to :admin, optional: true
  belongs_to :record, optional: true
end
