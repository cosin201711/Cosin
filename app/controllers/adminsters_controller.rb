class AdminstersController < ApplicationController

	def top
		@items = Item.all
	end

	def manage_users
		@user = User.find(params[:id])
		@users = User.all
	end

	def show
		@users = User.all
	end

	def show_user
	end

	def edit_user_details
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
        	redirect_to adminsters_path(@user.id), notice: "更新しました。"
        else
        	render 'edit_user_details'
        end
	end


	def destroy
		user = User.find(params[:id])
    	user.destroy
    	redirect_to adminster_path, notice: "更新しました。"
	end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :post_code, :address, :phone, :leave, :update_at, :email)
	end

	

end
