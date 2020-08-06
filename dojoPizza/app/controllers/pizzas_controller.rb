class PizzasController < ApplicationController

  def home
    render 'something'
  end

  def index
    
    @pizzas = Pizza.all
    render plain: '@pizzas'
  end

  def new

  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def create
    flash[:errors] = ['You loaded via oops','Error 2']
    redirect_to '/pizzas'
  end

end
