class ProductsController < ApplicationController
    
    before_action :set_product, only: [:edit,:update,:show,:destroy]
    before_action :require_admin, only: [:new,:create,:destroy,:edit]

    def index
        @products = Product.all
    end

    def show
        @categories = @product.categories
    end
    
    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        if @product.save
            redirect_to product_path(@product)
        else
            render 'new'
        end
    end

    def edit
        
    end

    def update
        if @product.update(product_params)
            redirect_to root_path
        end
    end

    def destroy
        @product.destroy
        if @product
            redirect_to root_path
        end
    end



    private

        def product_params
            params.require(:product).permit(:name,:description,:price,:image, category_ids: [])
        end

        def require_admin
            if current_user.admin == true
            else
                flash[:alert] = "Only admins can perform this action"
                redirect_to root_path
            end
        end

        def set_product
            @product = Product.find(params[:id])
        end


end
