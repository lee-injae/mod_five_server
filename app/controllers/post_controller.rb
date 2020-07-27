class PostController < ApplicationController

    skip_before_action :authorized, only: [:index]

    def index
        if !current_user
            @post = Post.all
            render json: @post
        elsif current_user
            @post = Post.where.not(user_id: current_user.id)
            render json: @post
        end
    end

    def sold
        # @post = # current_user.posts.where(status:true) 
        # @post render all 
    end

    def create
    end

    def show

    end

    def edit
    end

    def destroy
    end

end