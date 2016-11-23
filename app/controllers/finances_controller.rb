class FinancesController < ApplicationController
    def index
        @finances = Finance.all
    end
    
    def create
        @finance = Finance.create(finance_params)
        if @finance.valid?
            flash[:success] = "Your finance has been added!"
        else
            flash[:alert] = "Woops! Looks like there has been an error!"
        end
        redirect_to root_path
    end
    
    def edit
        @finance = Finance.find(params[:id])
    end
    
    def update
      @finance = Finance.find(params[:id])
      if @finance.update(finance_params)
        flash[:success] = "The finance has been updated!"
        redirect_to root_path
      else
        flash[:alert] = "Woops! Looks like there has been an error!"
        redirect_to edit_finance_path(params[:id])
      end
    end
    
    
    def destroy
      @finance = Finance.find(params[:id])
      @finance.destroy
      flash[:success] = "The idea was successfully deleted!"
      redirect_to root_path
    end
    
    private
    
    def finance_params
        params.require(:finance).permit(:title, :amount, :date)
    end
end
