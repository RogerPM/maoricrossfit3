class HeaderClass < ActiveRecord::Base
  belongs_to :service
  belongs_to :shcedule
  has_many :detail_classes, dependent: :destroy
end
