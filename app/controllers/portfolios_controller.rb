class PortfoliosController < ApplicationController
    before_action :portfolio, only: [:edit, :update, :show, :destroy]
    layout 'portfolio'

    def index
        @portfolio_items = Portfolio.all
    end

    def new
        @portfolio = Portfolio.new
        3.times { @portfolio.technologies.build }
    end

    def create
        @portfolio = Portfolio.new(portfolio_params)

        respond_to do |format|
            if @portfolio.save
                format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created' }
                format.json { render :show, status: :created, location: @portfolio }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @portfolio.errors, statys: :unprocessable_entity }
            end
        end
    end

    def edit; end

    def update
        respond_to do |format|
            if @portfolio.update(portfolio_params)
              format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
              format.json { render :show, status: :ok, location: @portfolio }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @portfolio.errors, status: :unprocessable_entity }
            end
          end
    end

    def show; end

    def destroy
        @portfolio.delete
        respond_to do |format|
          format.html { redirect_to portfolios_path, notice: "Portfolio was successfully destroyed." }
          format.json { head :no_content }
        end
    end

    private 

    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
    end

    def portfolio
        @portfolio = Portfolio.find(params[:id])
    end
end