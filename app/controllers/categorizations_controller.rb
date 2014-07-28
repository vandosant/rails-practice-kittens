class CategorizationsController < ApplicationController
  def new
    @kitten = Kitten.find(params[:kitten_id])
    @categorization = Categorization.new
  end

  def create
    Categorization.create(categorization_parameters.merge({kitten_id: params[:kitten_id]}))
    redirect_to root_path
  end

  private

  def categorization_parameters
    params.require(:categorization).permit(:category_id)
  end
end