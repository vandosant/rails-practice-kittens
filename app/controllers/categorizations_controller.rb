class CategorizationsController < ApplicationController
  def new
    @categorization = Categorization.new
  end

  def create
    Categorization.create({:kitten_id => params[:kitten_id]}.merge(allowed_parameters))
    redirect_to root_path
  end

  private

  def allowed_parameters
    params.require(:categorization).permit(:category_id)
  end
end