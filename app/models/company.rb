class Company < ApplicationRecord
  has_many :teams, dependent: :destroy
  has_many :members, dependent: :destroy
end
