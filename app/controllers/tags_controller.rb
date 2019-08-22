class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to admin_tags_path, notice: "Tag was succesfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tag.update(tag_params)
      redirect_to admin_tags_path, notice: 'Tag was successfully updated'
    else
      render :edit
    end
  end

  def destroy
    @tag.destroy
    redirect_to admin_tags_path, notice: 'Article was successfully destroyed'
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name_fr, :name_en, :icon)
  end
end
