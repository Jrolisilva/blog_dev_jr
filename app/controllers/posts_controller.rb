class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_post, only: [:show, :edit, :update]

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to blog_index_path,  notice: 'Post enviado com sucesso'
    else
      redirect_to blog_index_path, alert: 'Erro ao enviar post'
    end
  end

  def edit
  end

  def update
    @post = Post.update(post_params)
    if @post.save
      redirect_to blog_index_path, notice: 'Post Atualizado'
    else
      redirect_to blog_index_path, alert: 'Erro ao atualizar post'
  end

  def show
    @comment = Commnent.new
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :banner, :user_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
