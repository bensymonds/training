class WeighingsController < ApplicationController

  def index
    @weighings = Weighing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @weighings }
    end
  end

  def new
    @weighing = Weighing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @weighing }
    end
  end

  def create
    @weighing = Weighing.new(params[:weighing])

    respond_to do |format|
      if @weighing.save
        format.html { redirect_to(:back, :notice => 'Weighing was successfully created.') }
        format.xml  { render :xml => @weighing, :status => :created, :location => @weighing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @weighing.errors, :status => :unprocessable_entity }
      end
    end
  end

end
