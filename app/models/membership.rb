class Membership < ActiveRecord::Base
  belongs_to :service
  has_many :subscriptions
end
