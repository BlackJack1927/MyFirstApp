class PostsController < ApplicationController
#http_basic_authenticate_with name: "admin", password:"123", except: [:index, :show]
#типа регистрация
  def index
@post = Post.all
  end

  def new
@post = Post.new
  end

def show
  @post = Post.find(params[:id])
end

def edit
  @post = Post.find(params[:id])
end

def update
#render :plain params[:post].inspect
@post = Post.find(params[:id])

if @post.update(post_params)
redirect_to @post
else
render 'edit'
end
end

def destroy
  @post = Post.find(params[:id])

  @post.destroy

   redirect_to posts_path

end

  def create
#render :plain params[:post].inspect
@post = Post.new(post_params)

if @post.save
redirect_to @post
else
  render 'new'
  end
end

private def post_params
  params.require(:post).permit(:title, :body)
end

end
