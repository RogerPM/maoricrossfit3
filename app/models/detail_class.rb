class DetailClass < ActiveRecord::Base
  belongs_to :client
  belongs_to :header_class
  belongs_to :subscription
end
