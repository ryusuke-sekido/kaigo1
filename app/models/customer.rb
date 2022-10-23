class Customer < ApplicationRecord
  has_many :records
  has_many :schedules
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :sex, presence: true
  validates :age, presence: true
  validates :care_number, presence: true
  validates :day, presence: true
end
