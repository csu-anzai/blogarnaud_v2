class ReadersController < ApplicationController
  before_action :set_reader, only: [:show, :edit, :update, :destroy]

  def index
    @readers = Reader.all.order(id: :desc)
  end

  def show
  end

  def new
    @reader = Reader.new
  end

  def create
    @reader = Reader.new(reader_params)
    if @reader.save
      redirect_to root_path, notice: 'Votre message a bien été envoyé'
    else
      render :contact
    end
  end

  def edit
  end

  def update
    if @reader.update(reader_params)
      redirect_to @reader, notice: 'Reader was succesfully updated'
    else
      render :edit
    end
  end

  def destroy
    @reader.destroy
    redirect_to @readers_url, notice: 'Reader was successfully destroyed'
  end

  private

  def set_reader
    @reader = Reader.find(params[:id])
  end

  def reader_params
    params.require(:reader).permit(:first_name, :last_name, :email, :message)
  end
end
