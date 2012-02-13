class HillsController < ApplicationController
  # GET /hills
  # GET /hills.json
  def index
    @hills = Hill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hills }
    end
  end

  # GET /hills/1
  # GET /hills/1.json
  def show
    @hill = Hill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hill }
    end
  end

  # GET /hills/new
  # GET /hills/new.json
  def new
    @hill = Hill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hill }
    end
  end

  # GET /hills/1/edit
  def edit
    @hill = Hill.find(params[:id])
  end

  # POST /hills
  # POST /hills.json
  def create
    @hill = Hill.new(params[:hill])

    respond_to do |format|
      if @hill.save
        format.html { redirect_to @hill, notice: 'Hill was successfully created.' }
        format.json { render json: @hill, status: :created, location: @hill }
      else
        format.html { render action: "new" }
        format.json { render json: @hill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hills/1
  # PUT /hills/1.json
  def update
    @hill = Hill.find(params[:id])

    respond_to do |format|
      if @hill.update_attributes(params[:hill])
        format.html { redirect_to @hill, notice: 'Hill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hills/1
  # DELETE /hills/1.json
  def destroy
    @hill = Hill.find(params[:id])
    @hill.destroy

    respond_to do |format|
      format.html { redirect_to hills_url }
      format.json { head :no_content }
    end
  end
end
