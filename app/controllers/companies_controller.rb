class CompaniesController < ApplicationController

    def show
        @company = Company.find(params[:id])
    end
    
    def new 
        @company = Company.new
    end

    def create
        @company = Company.new
        @company.create(params.require(:company).permit(:name))
        redirect_to companies_path
    end

    def index
        @companies = Company.all
    end
end
