class RunTypesController < ApplicationController
  before_filter :require_admin
  
  
  # GET /run_types
  # GET /run_types.json
  def index
    @run_types = RunType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @run_types }
    end
  end

  # GET /run_types/1
  # GET /run_types/1.json
  def show
    @run_type = RunType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @run_type }
    end
  end

  # GET /run_types/new
  # GET /run_types/new.json
  def new
    @run_type = RunType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @run_type }
    end
  end

  # GET /run_types/1/edit
  def edit
    @run_type = RunType.find(params[:id])
  end

  # POST /run_types
  # POST /run_types.json
  def create
    @run_type = RunType.new(params[:run_type])

    respond_to do |format|
      if @run_type.save
        format.html { redirect_to @run_type, notice: 'Run type was successfully created.' }
        format.json { render json: @run_type, status: :created, location: @run_type }
      else
        format.html { render action: "new" }
        format.json { render json: @run_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /run_types/1
  # PUT /run_types/1.json
  def update
    @run_type = RunType.find(params[:id])

    respond_to do |format|
      if @run_type.update_attributes(params[:run_type])
        format.html { redirect_to @run_type, notice: 'Run type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @run_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /run_types/1
  # DELETE /run_types/1.json
  def destroy
    @run_type = RunType.find(params[:id])
    @run_type.destroy

    respond_to do |format|
      format.html { redirect_to run_types_url }
      format.json { head :no_content }
    end
  end
end
