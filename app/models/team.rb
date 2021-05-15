class Team < ApplicationRecord
  has_many :team_members
  has_many :members, through: :team_members, dependent: :destroy
  belongs_to :company
end
