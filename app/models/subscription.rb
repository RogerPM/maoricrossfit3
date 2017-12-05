class Subscription < ActiveRecord::Base
  belongs_to :client
  belongs_to :service
  belongs_to :membership
  belongs_to :sale
end
