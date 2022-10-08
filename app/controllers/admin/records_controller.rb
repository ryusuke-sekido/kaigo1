class Admin::RecordsController < ApplicationController
  def new
    @record = Record.new
    @customer = Customer.find(params[:customer_id])
  end

  def create
    @customer = Customer.find(params[:customer_id])
    @record = @customer.records.new(record_params)
    @record.save
    redirect_to admin_customer_path(@customer.id)
  end

  def index
    @records = Record.all.order(created_at: :DESC)
    @customers = Customer.all
  end

  private
  def record_params
     params.require(:record).permit(:body)
  end

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana,
    :first_name_kana, :sex, :age, :postal_code, :address, :telephone_number, :day, :plan)
  end
end