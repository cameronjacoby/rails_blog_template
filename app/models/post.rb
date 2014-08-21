class Post < ActiveRecord::Base
  has_many :entries, dependent: :destroy
  has_many :tags, :through => :entries
end