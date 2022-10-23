class SearchesController < ApplicationController
  def search
    if params[:last_name].present?
      @customers = Customer.where('last_name LIKE ?', "%#{params[:last_name]}")
    else
      flash[:alert] ='該当者はいませんでした'
      render :search
      #@customers = Customer.none

    #@range = params[:range]
    #if @range == "Customer"
     # @customer = Customer.looks(params[:search], params[:word])
    #else
      #@record = Record.looks(params[:search], params[:word])
    end
  end
end
