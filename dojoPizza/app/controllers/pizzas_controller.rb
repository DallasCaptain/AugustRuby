class PizzasController < ApplicationController

  layout 'forms', only: [:edit, :new]


  def home
    render 'something'
  end

  def index
    funfunction
    @pizzas = Pizza.all
  end

  def new

  end

  def edit
    @pizza = Pizza.find(params[:id])
  end

  def update
    Pizza.update(params[:id],pizza_params)
    redirect_to pizzas_path
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def create
    
    Pizza.create(pizza_params)

    # @pizza = Pizza.new
    # @pizza.crust = params[:crust]
    # @pizza.crust = params[:sauce]
    # @pizza.crust = params[:size]
    # @pizza.save
    flash[:errors] = ['You loaded via pizza submission','Error 2']
    redirect_to '/pizzas'
  end

  private

  def pizza_params
    params.require(:pizza).permit(:crust,:sauce,:size)
  end


end
