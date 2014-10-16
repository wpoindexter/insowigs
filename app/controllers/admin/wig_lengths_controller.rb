class Admin::WigLengthsController < ApplicationController

  before_action :set_wig_length, only: [:edit, :update, :destroy]

  def index
    @wig_lengths = WigLength.all
  end

  def new
    @wig_length = WigLength.new
  end

  def edit
  end

  def create
    @wig_length = WigLength.new wig_length_params
    if @wig_length.save
      redirect_to admin_wig_lengths_path, notice: 'Wig length was successfully created.'
    else
      render :new
    end
  end

  def update
    if @wig_length.update wig_length_params
      redirect_to admin_wig_lengths_path, notice: 'Wig length was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @wig_length.destroy
    redirect_to admin_wig_lengths_url, notice: 'Wig length was successfully destroyed.'
  end

  private

  def set_wig_length
    @wig_length = WigLength.find params[:id]
  end

  def wig_length_params
    params.require(:wig_length).permit :title, :inches, :description
  end
end
