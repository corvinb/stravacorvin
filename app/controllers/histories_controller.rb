class HistoriesController < ApplicationController
  before_action :set_history, only: [:show, :edit, :update, :destroy]

  # GET /histories
  def index
      #@histories = History.all
  end

  # GET /histories/1
  def show
  end

  # GET /histories/new
  def new
    @history = History.new
  end

  # GET /histories/1/edit
  def edit
  end

  # POST /histories
  def create
    @history = History.new(history_params)

    if @history.save
      redirect_to @history, notice: 'History was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /histories/1
  def update
    if @history.update(history_params)
      redirect_to @history, notice: 'History was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /histories/1
  def destroy
    @history.destroy
    redirect_to histories_url, notice: 'History was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history
      @history = History.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def history_params
      params[:history]
    end
end
