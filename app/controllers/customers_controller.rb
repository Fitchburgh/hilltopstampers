class CustomersController < ApplicationController
  def index
    @customer = Customer.new
  end

  def new
    @customer = Customer.create_customer(customer_params)
    if @customer.save
      redirect_to '/customers/index'
    else
      render :json => { errors: @customer.errors.full_messages }, status: 400
    end
  end

  def edit
  end

  def delete
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address, :notes, :last_hosted, :attendance)
  end
end
