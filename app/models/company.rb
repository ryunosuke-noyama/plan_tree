class Company < ApplicationRecord
  has_many :teams, dependent: :destroy
  has_many :members, dependent: :destroy
  has_many :plans, dependent: :destroy
end
