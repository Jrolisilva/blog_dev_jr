class Post < ApplicationRecord
  has_rich_text :content
  has_one_attached :banner

  belongs_to :user

  has_many :comments, as: :commentable, dependent: :destroy

  validates_presence_of :title, :content

  def banner_foto
    if self.banner.attached?
      self.banner
    else
      'bill_gates_phrase'
    end
  end
end
