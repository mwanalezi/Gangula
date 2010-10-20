class UniversidadesController < ApplicationController
  before_filter :carrega_parametros

  def carrega_parametros
    @onde_estudar = false
    if params[:provincia_id]
      @onde_estudar = Provincia.find(params[:provincia_id])
    end
  end

  def index
    if @onde_estudar
      @universidades = @onde_estudar.universidades.find :all
    else
      @universidades = Universidade.all
    end
     @meta_title = "Universidades-"+@meta_title
  end
  
  def show
    @universidade = Universidade.find(params[:id])
    @meta_title = @universidade.abreviatura+"-"+@universidade.nome+"-"+@meta_title
  end
  
  def new
    @meta_title = "Nova Universidade-"+@meta_title
    @universidade = Universidade.new
    @municipios = Municipio.find(:all, :order => :nome)
    @provincias = Provincia.find(:all, :order => :nome)
  end
  
  def create
    @universidade = Universidade.new(params[:universidade])
    if @universidade.save
      flash[:notice] = "Universidade cadastrada com sucesso."
      redirect_to @universidade
    else
      flash[:error] = "Não foi possível cadastrar a universidade."
      render :action => 'new'
    end
  end
  
  def edit
    @universidade = Universidade.find(params[:id])
    @municipios = Municipio.find(:all, :order => :nome)
    @provincias = Provincia.find :all, :order => :nome
    @meta_title = "Editando universidade: "+@universidade.nome+"-"+@meta_title
  end
  
  def update
    @universidade = Universidade.find(params[:id])
    if @universidade.update_attributes(params[:universidade])
      flash[:notice] = "Universidade atualizada com sucesso."
      redirect_to @universidade
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @universidade = Universidade.find(params[:id])
    @universidade.destroy
    flash[:notice] = "Universidade excluida com sucesso."
    redirect_to universidades_url
  end

  
end
