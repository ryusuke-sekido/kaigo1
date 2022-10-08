class Schedule < ApplicationRecord
  belongs_to :customer
  config.i18n.default_locale = :ja
end
