class PostController < ApplicationController

    def index
        @post = Post.all
        render json: @post

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