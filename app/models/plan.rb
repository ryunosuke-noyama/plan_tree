class Plan < ApplicationRecord
  has_many :events
  belongs_to :company
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :status
end
