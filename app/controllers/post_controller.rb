class PostController < ApplicationController

    skip_before_action :authorized, only: [:index, :create]

    def index
        if !current_user
            @posts = Post.all
            render json: @posts
        elsif current_user
            @posts = Post.where.not(user_id: current_user.id)
                if params[:type]
                  @filtered_posts = @posts.select {|post| post.user.location.name == params[:type]}
                  render json: @filtered_posts
                else
                    render json: @posts
                end
        end
    end

    def sold
        # @post = # current_user.posts.where(sold:true) 
        # @post render all 
    end

    def create
        @post = Post.new(post_params)
       
        if @post.save 
            render json: @post, status: :created
        else
            render json: @post.errors, status: :unprocessable_entity
        end
    end

    def show

    end

    def edit
    end

    def destroy
    end

    private
    def post_params
        params.require(:post).permit(:title, :price, :date, :description, :image, :sold, :user_id)
    end

end