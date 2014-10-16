class Admin::WigDesignsController < ApplicationController

  before_action :set_wig_design, only: [:edit, :update, :destroy]

  def index
    @wig_designs = WigDesign.all
  end

  def new
    @wig_design = WigDesign.new
  end

  def edit
  end

  def create
    @wig_design = WigDesign.new(wig_design_params)
    if @wig_design.save
      redirect_to admin_wig_designs_url, notice: 'Wig design was successfully created.'
    else
      render :new
    end
  end

  def update
    if @wig_design.update wig_design_params
      redirect_to admin_wig_designs_url, notice: 'Wig design was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @wig_design.destroy
    redirect_to admin_wig_designs_url, notice: 'Wig design was successfully destroyed.'
  end

  private

  def set_wig_design
    @wig_design = WigDesign.find params[:id]
  end

  def wig_design_params
    params.require(:wig_design).permit :name, :wig_length_id
  end
end
