class SelectsController < ApplicationController
  def select_form
    if params[:day].present?
      @customers = Customer.where('day LIKE ?', "%#{params[:day]}")
    else
      @customers = Customer.none
    end
  end
end