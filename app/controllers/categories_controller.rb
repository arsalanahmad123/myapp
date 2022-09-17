class CategoriesController < ApplicationController
    before_action :require_admin,only: [:new,:create,:edit,:update]

    def index
        @categories  = Category.all
    end

    def show
        @category = Category.find(params[:id])
        @products = @category.products
    end

    def new
        @category = Category.new
    end
    
    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to categories_path
        else
            render 'new'
        end
    end


    def edit
        @category = Category.find(params[:id])
    end

    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to category_path(@category)
        end
    end

    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_path
    end



    private

        def category_params
            params.require(:category).permit(:name)
        end

        def require_admin
            if current_user.admin == true
            else
                flash[:alert] = "Only admins can perform this action"
                redirect_to root_path
            end
        end


end
