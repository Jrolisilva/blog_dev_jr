class BlogController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @post = Post.order(created_at: :DESC).page params(:page)
  end
end
