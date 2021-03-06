class Member < ApplicationRecord
  has_many :team_members
  has_many :teams, through: :team_members, dependent: :destroy
  belongs_to :company
end
