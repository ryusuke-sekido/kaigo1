class Admin::CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to admin_customers_path
  end

  def index
    @customers = Customer.all
  end
  

  private
  def customer_params
    params.require(:customer).permit(:name)
  end
end
