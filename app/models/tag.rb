class Tag < ActiveRecord::Base
  has_many :entries, dependent: :destroy
  has_many :posts, :through => :entries
end