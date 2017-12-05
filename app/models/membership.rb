class Membership < ActiveRecord::Base
  belongs_to :service
  has_many :subscription
end
