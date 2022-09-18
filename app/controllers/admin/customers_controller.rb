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

  def show
    @customer = Customer.find(params[:id])
    @record = Record.new
    @records = @customer.records
    @schedule = Schedule.new
    @schedules = @customer.schedules
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to admin_customer_path(@customer.id)
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
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana,
    :first_name_kana, :sex, :age, :postal_code, :address, :telephone_number, :day, :plan)
  end

  def record_params
     params.require(:record).permit(:body)
  end
end
