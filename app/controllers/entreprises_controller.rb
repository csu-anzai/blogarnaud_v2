class EntreprisesController < ApplicationController
  before_action :set_entreprise, only: [:show, :edit, :update, :destroy]

  def index
    @entreprises = Entreprise.all.order(id: :asc)
  end

  def show
  end

  def new
    @entreprise = Entreprise.new
  end

  def create
    @entreprise = Entreprise.new(entreprise_params)
    if @entreprise.save
      redirect_to admin_entreprises_path, notice: 'Entreprise was succesfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @entreprise.update(entreprise_params)
      redirect_to admin_entreprises_path, notice: 'Entreprise was succesfully updated'
    else
      render :edit
    end
  end

  def destroy
    @entreprise.destroy
    redirect_to admin_entreprises_path, notice: 'Entreprise was succesfully destroyed'
  end

  private

  def set_entreprise
    @entreprise = Entreprise.find(params[:id])
  end

  def entreprise_params
    params.require(:entreprise).permit(:name, :value_proposition_fr, :value_proposition_en,
                                       :content_fr, :content_en, :photo, :logo, :website, :tag_id)
  end
end
