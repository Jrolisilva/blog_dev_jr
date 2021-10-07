class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  before_save :set_avatar

  has_many :comments, as: :commentable, dependent: :destroy

  validates_presence_of :name, :email, :content

  def set_avatar
    self.avatar = [:bill, :dog, :doge, :elon, :mark, :mark2, :steve, :steve2, :steve3].sample
  end
end
