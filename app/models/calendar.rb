class Calendar < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :to_dos
end
