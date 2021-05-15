class Event < ApplicationRecord
  belongs_to :plan
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :status
  validates :status_id, numericality: { other_than: 1 } 
end
