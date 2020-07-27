class UserController < ApplicationController
    
    # def index
    # end

    # def create
        
    #     @user = User.create(email:params[:email], password:params[:password], nickname:params[:nickname], location_id:params[:location_id])
    #     if @user.valid?
    #         @token = encode_token(user_id: @user.id)

    #         render json: { user: @user, jwt: @token}
    #     else
    #         render json: { error: 'failed to create user' }, status: :not_acceptable
    #     end
    # end

    # def profile
    #     render json: current_user
    # end


    # def show

    # end

    # def edit
    # end

    # def destroy
    # end

    # private

    # def user_params
    #     params.require(:user).permit(:id, :nickname, :email, :password, :location_id, :avatar, :rating)
    # end

end
