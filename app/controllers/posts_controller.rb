class PostsController < ApplicationController
  def top
  end

  def index
    @lists = List.all
    @list = List.new
    
  end

  
  def show
    @list = List.find(params[:id])
    
  end

  def edit
    @list = List.find(params[:id])
    
  end
  
  def create
    @list = List.new(list_params)
    if @list.save
      flash[:notice] = "create successfully"
      redirect_to("/posts/#{@list.id}/show")
    else
      render("posts/index")
    end
   
  end
  
  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      flash[:notice] = "update successfully"
      redirect_to("/posts/#{@list.id}/show")
    else
      render("posts/edit")
    end
  end
  
  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      flash[:notice] = "destroy successfully"
      redirect_to("/posts/index")
    end
  end
    
  private
  
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end
