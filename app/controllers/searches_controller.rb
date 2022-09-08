class SearchesController < ApplicationController
  def search
    if params[:name].present?
      @customers = Customer.where('name LIKE ?', "%#{params[:name]}")
    else
      @customers = Customer.none

    #@range = params[:range]
    #if @range == "Customer"
     # @customer = Customer.looks(params[:search], params[:word])
    #else
      #@record = Record.looks(params[:search], params[:word])
    end
  end
end
