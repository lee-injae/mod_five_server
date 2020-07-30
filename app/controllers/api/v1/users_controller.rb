class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        render json: current_user, status: :accepted
    end


    def create
        @user = User.create(email:params[:email], password:params[:password], nickname:params[:nickname], location_id:params[:location_id])   
        if @user.valid?
            @token = encode_token(user_id: @user.id)       
            render json: { user: @user, jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:user).permit(:id, :email, :password, :nickname, :location_id, :avatar, :rating)
    end

end
