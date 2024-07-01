class UsersController < ApplicationController
    def new 
        @company = Company.find(params[:company_id])
        @user = User.new
    end

    def create
        @user = User.create(params.require(:user).permit(:name, :role, :company_id))
        redirect_to @user

    end

    def index
        @company = Company.find(params[:company_id])
        @users = User.where(company_id: @company.id)
    end

    def show
        @user = User.find(params[:id])
    end
end
