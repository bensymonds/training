class WeighingsController < ApplicationController

  def index
    @weighings = Weighing.all
  end

  def new
    @weighing = Weighing.new
  end

  def create
    @weighing = Weighing.new(params[:weighing])
    if @weighing.save
      redirect_to(weighings_url, :notice => 'Weighing was successfully created.')
    else
      render :action => "new"
    end
  end

end
