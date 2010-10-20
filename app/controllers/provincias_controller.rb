class ProvinciasController < ApplicationController

  def index
    @meta_title = "Províncias-"+@meta_title
    @provincias = Provincia.all
  end

  def new
    @meta_title = "Nova Província-"+@meta_title
    @provincia = Provincia.new
  end

  def create
    @provincia = Provincia.create(params[:provincia])
    
    if @provincia.save
      flash[:notice] = "Província Cadastrada com Sucesso."
      redirect_to provincias_path
    else
      flash[:error] = "Não foi possível cadastrar a província."
      redirect_to new_provincia_path
    end
  end

  def destroy
    @provincia = Provincia.find(params[:id])
    if @provincia.destroy
      flash[:notice] = "Província Excluida com Sucesso."
    else
      flas[:error] = "Não foi possível excluir a província"
    end
    redirect_to provincias_path
  end

  def edit
    @provincia = Provincia.find(params[:id])
    @meta_title = "Editando província: "+@provincia.nome+"-"+@meta_title
  end

  def update
    @provincia = Provincia.find(params[:id]) 
    if @provincia.update_attributes(params[:provincia])
      flash[:notice] = "Província Atualizada com Sucesso."
    else
      flash[:error] = "Erro ao atualizar a província."
    end
    redirect_to provincias_path  
  end

  def show
    redirect_to provincias_path
  end
end
