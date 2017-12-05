class HeaderClass < ActiveRecord::Base
  belongs_to :service
  belongs_to :shcedule
  #has_many :detailclasses, dependent: :destroy
end
