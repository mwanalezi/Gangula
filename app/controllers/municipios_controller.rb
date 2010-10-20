class MunicipiosController < ApplicationController
  before_filter :load_provincias

  def load_provincias
    if params[:provincia_id]
      @provincia = Provincia.find(params[:provincia_id])
    else
      unless params[:action] == "carrega_municipios"  

      flash[:error] = "Por Favor Selecione uma Província"
      redirect_to provincias_path
      end
    end   
  end

  

  def index
    @municipios = @provincia.municipios.find :all
  end

  def new
    @municipio = @provincia.municipios.new
  end

  def create
    @municipio = @provincia.municipios.create(params[:municipio])

    if @municipio.save
      flash[:notice] = "Município Cadastrado com Sucesso."
      redirect_to provincia_municipios_path(@provincia)
    else
      flash[:error] = "Não foi possível salvar o município."
     render :action => "new"
    end
    
  end

  def destroy
    @municipio =@provincia.municipios.find(params[:id])
    if @municipio.destroy
      flash[:notice] = "Município Excluido com Sucesso."
    else
      flash[:error] = "Não foi possível excluir o município."
    end
    redirect_to provincia_municipios_path(@provincia)
  end

  def edit
    @municipio = @provincia.municipios.find(params[:id])
  end

  def update
    @municipio = @provincia.municipios.find(params[:id])
    if @municipio.update_attributes(params[:municipio])
      flash[:notice] = "Município Atualizado com Sucesso."
    else
      flash[:error] = "Erro ao atualizar o município."
    end
    redirect_to provincia_municipios_path(@provincia)

  end

  def carrega_municipios
    @municipios = Municipio.find_all_by_provincia_id(params[:id])

    respond_to do |format|
      format.json { render :json => @municipios }
    end
  end

end
