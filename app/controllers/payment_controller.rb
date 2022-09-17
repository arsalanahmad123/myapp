class PaymentController < ApplicationController
    
    def new
        @product = Product.find(params[:product_id])
        @user = current_user
    end
    
    def create
      customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken],
      )
    
      charge = Stripe::Charge.create(
        customer: customer.id,
        amount: @product.price,
        description: 'Rails Stripe customer',
        currency: 'usd'
      )
      if charge.paid 
          product_id: @product.id,
          user_id: @user.id
      end
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_payment_path
    end
end
