class Post < ActiveRecord::Base
  has_many :entries, dependent: :destroy
  has_many :tags, :through => :entries
  has_many :comments, dependent: :destroy
end