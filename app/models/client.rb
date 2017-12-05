class Client < ActiveRecord::Base
	has_many :subscription
	has_many :sales
	has_many :detailclasses
end
