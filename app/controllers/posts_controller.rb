class PostsController < ApplicationController
    before_action :set_post, only: %i[show destroy update]

    def index
      posts = Post.all.order(:id)
      render json: posts
    end
  
    def show
      render json: @post
    end
  
    def create
        Post.create(post_params)
        return render_400 if status == 400
        render json: {status: 200, message: 'Post is created.'}, status: 200
    end
  
    def update
      if @post.update(post_params)
        render json: @post
      else
        render json: @post.errors
      end
    end
  
    def destroy
      if @post.destroy
        render json: @post
      else
        render json: @post.errors
      end
    end
  
    private
  
    def set_post
      @post = Post.find(params[:id])
    end
  
    def post_params
        params.permit(:title, :content)
    #   params.require(:post).permit(:title, :content)
    end
end
