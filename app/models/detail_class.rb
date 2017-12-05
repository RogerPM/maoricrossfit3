class DetailClass < ActiveRecord::Base
  belongs_to :client
  belongs_to :subscription
end
