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

    def show
      @programming_term = ProgrammingTerm.find(params[:id])
    end
  end

  private

  def programming_term_params
    params.require(:programming_term).permit(:term, :meaning)
  end
end
