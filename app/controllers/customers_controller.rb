class CustomersController < ApplicationController

    def new 
        @user = User.find(params[:user_id])
        @customer = Customer.new
    end

    def create
        @customer = Customer.create(params.require(:customer).permit(:name, :user_id))
        redirect_to @customer

    end

    def index
        @user = User.find(params[:user_id])
        @customers = Customer.where(user_id: @user.id)
    end

    def show
        @customer = Customer.find(params[:id])
    end
end
