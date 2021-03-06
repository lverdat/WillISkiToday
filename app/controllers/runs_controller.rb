class RunsController < ApplicationController
  before_filter :require_admin, :except => [:index, :show]
  
  # GET /runs
  # GET /runs.json
  def index
    @runs = Run.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @runs }
    end
  end

  # GET /runs/1
  # GET /runs/1.json
  def show
    @run = Run.find(params[:id])
    
    if @run.evaluations.length > 0
      @globalMark = 0
      @run.evaluations.each do |eval|
        @globalMark += eval.note
      end
      
      @globalMark /= @run.evaluations.length
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @run }
    end
  end

  # GET /runs/new
  # GET /runs/new.json
  def new
    @run = Run.new    
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @run }
      format.json { render json: @run_types}
    end
  end

  # GET /runs/1/edit
  def edit
    @run = Run.find(params[:id])
    #Run.hill car la vue est orientée liste de runs pour un hill
    @hill = @run.hill
  end

  # POST /runs
  # POST /runs.json
  def create
    @hill = Hill.find(params[:hill_id])
    
    @run = @hill.runs.create(params[:run])
    redirect_to hill_path(@hill)    
  end

  # PUT /runs/1
  # PUT /runs/1.json
  def update
    @run = Run.find(params[:id])

    respond_to do |format|
      if @run.update_attributes(params[:run])
        format.html { redirect_to @run, notice: 'Run was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /runs/1
  # DELETE /runs/1.json
  def destroy
    @run = Run.find(params[:id])
    @hill = Hill.find(params[:hill_id])
    @run.destroy

    respond_to do |format|
      format.html { redirect_to hill_path(@hill) }
      format.json { head :no_content }
    end
  end
end
