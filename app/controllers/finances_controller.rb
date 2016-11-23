class FinancesController < ApplicationController
    def index
        @finances = Finance.all
    end
    
    def create
        @finance = Finance.create(finance_params)
        if @finance.valid?
            # Implement later
        else
            # Implement later
        end
        redirect_to root_path
    end
    
    def edit
        @finance = Finance.find(params[:id])
    end
    
    def update
      @finance = Finance.find(params[:id])
      if @finance.update(finance_params)
        redirect_to root_path
      else
        redirect_to edit_finance_path(params[:id])
      end
    end
    
    
    def destroy
      @finance = Finance.find(params[:id])
      @finance.destroy
      redirect_to root_path
    end
    
    private
    
    def finance_params
        params.require(:finance).permit(:title, :amount, :date)
    end
end
