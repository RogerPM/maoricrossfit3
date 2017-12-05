class Client < ActiveRecord::Base
	has_many :subscriptions
	has_many :sales
	has_many :detail_classes
end
