class DosesController < ApplicationController
  before_action :set_doses, only: %i[ show edit update destroy ]

  def new
    @doses = Dose.new
  end

  def edit
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to doses_path(@doses)
    else
      render :new
    end
  end

  private

  def doses_params
    params.require(:cocktail).permit(:description)
    end
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
