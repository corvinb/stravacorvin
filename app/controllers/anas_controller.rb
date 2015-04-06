class AnasController < ApplicationController
  before_action :set_ana, only: [:show, :edit, :update, :destroy]

  # GET /anas
  def index
      #@anas = Ana.all
  end

  # GET /anas/1
  def show
  end

  # GET /anas/new
  def new
    @ana = Ana.new
  end

  # GET /anas/1/edit
  def edit
  end

  # POST /anas
  def create
    @ana = Ana.new(ana_params)

    if @ana.save
      redirect_to @ana, notice: 'Ana was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /anas/1
  def update
    if @ana.update(ana_params)
      redirect_to @ana, notice: 'Ana was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /anas/1
  def destroy
    @ana.destroy
    redirect_to anas_url, notice: 'Ana was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ana
      @ana = Ana.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ana_params
      params[:ana]
    end
end
