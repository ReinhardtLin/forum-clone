class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :categoryships, :dependent => :destroy
  has_many :categories, :through => :categoryships
  validates_presence_of :title

  def can_delete_by?(user)
    self.user == user
  end
end
