class Point < ActiveRecord::Base
  validates_presence_of :owner_id, :owner_type, :giver_id, :giver_type, :score, :operation

  belongs_to :owner, polymorphic: true
  belongs_to :giver, polymorphic: true
end