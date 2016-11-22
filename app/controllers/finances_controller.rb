class FinancesController < ApplicationController
    def index
        @finances = Finance.all
    end
    
    def create
        @finance = Finance.create(finance_params)
        redirect_to root_path
    end
    
    private
    
    def finance_params
        params.require(:finance).permit(:title, :amount, :date)
    end
end
