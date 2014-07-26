class CategorizationsController < ApplicationController
  def new
    @categorization = Categorization.new
  end

  def create
    categorization = Categorization.new({:kitten_id => params[:kitten_id]}.merge(allowed_parameters))
    if categorization.save
      redirect_to root_path
    else
      @categorization = categorization
      render :new
    end
  end

  private

  def allowed_parameters
    params.require(:categorization).permit(:category_id)
  end
end