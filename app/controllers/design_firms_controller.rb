class DesignFirmsController < ApplicationController
  def index
    @design_firms = DesignFirm.all
  end

  def show
    @design_firm = DesignFirm.find(params[:id])
  end

  def new
    @design_firm = DesignFirm.new
  end

  def create
    @design_firm = DesignFirm.new(design_firm_params)

    @design_firm.save

    redirect_to @design_firm
  end

  private

  def design_firm_params
    params.require(:design_firm).permit(:name, :email)
  end
end
