class ListsController < ApplicationController
  #Sirve para que la funcion find_list definida al final
  #solo se aplique a las funciones permitadas o se aplique
  #de manera general sin incluir funciones definidas
  before_action :find_list, only: [:show, :edit, :update, :destroy] #Permite solo en esas
  #before_action :find_list, except: [:index, :new, :create #Niega en estas otras
  
  def index
  end
  
  def new
    @list = List.new 
  end
  
  def create
    List.create(list_params)
    #render json: list_params
  end
    
  def edit
  end
  
  def update
    @list.update(list_params)
    redirect_to @list
  end
  
  def show
  end
  
  def destroy
    @list.destroy
    redirect_to :action => :new
  end
  
  private
  def list_params
    params
      .require(:list)
      .permit(:name, :description)
  end

  def find_list
    @list = List.find(params[:id])
  end
end