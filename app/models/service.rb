class Service < ActiveRecord::Base
	has_many :memberships
	has_many :subscriptions
	has_many :header_classes
end
