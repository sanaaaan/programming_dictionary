class ProgrammingTermsController < ApplicationController
  def index
    @programming_terms = ProgrammingTerm.all
  end

  def new
    @programming_term = ProgrammingTerm.new
  end

  def create
    @programming_term = ProgrammingTerm.new(programming_term_params)
    if @programming_term.save
      redirect_to programming_terms_path, notice: 'Programming term was successfully created.'
    else
      render :new
    end
  end

  def show
    @programming_term = ProgrammingTerm.find(params[:id])
  end

  def edit
    @programming_term = ProgrammingTerm.find(params[:id])
  end

  def update
    @programming_term = ProgrammingTerm.find(params[:id])
    if @programming_term.update(programming_term_params)
      redirect_to programming_term_path(@programming_term), notice: "programming term was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @programming_term = ProgrammingTerm.find(params[:id])
    @programming_term.destroy
    redirect_to programming_terms_path, notice: "programming term was successfully deleted."
  end
  
  private

  def programming_term_params
    params.require(:programming_term).permit(:term, :meaning, :example, :category,)
  end
end
