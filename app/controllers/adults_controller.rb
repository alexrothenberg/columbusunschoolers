class AdultsController < ApplicationController
  before_action :set_adult, only: [:show, :edit, :update, :destroy]

  # GET /adults
  def index
    @adults = Adult.all
  end

  # GET /adults/1
  def show
  end

  # GET /adults/new
  def new
    @adult = Adult.new
  end

  # GET /adults/1/edit
  def edit
  end

  # POST /adults
  def create
    @adult = Adult.new(adult_params)

    if @adult.save
      redirect_to @adult, notice: 'Adult was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /adults/1
  def update
    if @adult.update(adult_params)
      redirect_to @adult.family, notice: 'Adult was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /adults/1
  def destroy
    @adult.destroy
    redirect_to adults_url, notice: 'Adult was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adult
      @adult = Adult.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def adult_params
      params[:adult].permit(:first_name, :last_name, :phone, :text_messagable, :email, :address)
    end
end
