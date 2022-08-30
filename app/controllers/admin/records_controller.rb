class Admin::RecordsController < ApplicationController
  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @record.save
    redirect_to admin_records_path
  end

  def index
    @records = Record.all
  end


  private
  def record_params
     params.require(:record).permit(:writing)
  end
end
