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

  def edit
    @customer = Customer.find(params[:id])
  end

  def withdraw
    @customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行しました。"
    redirect_to root_path
  end

  def destroy
    customer = Customer.find(params[:id])
    customer.destroy
    redirect_to admin_customers_path
  end


  private
  def customer_params
    params.require(:customer).permit(:name)
  end
end
