class ListsController < ApplicationController
  def new
    @list = List.new 
    @list.name = 'Walmart'
    @list.description = 'Lista de compra para despenza de walmart' 
  end
end
