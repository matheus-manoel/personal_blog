class Post < ActiveRecord::Base
  acts_as_taggable_on :tags
  validates :title, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :subtitle, presence: true, length: { maximum: 256 }
  validates :body, presence: true
end
