class CarreirasController < ApplicationController
  def index
    @meta_title = "Listagem de Carreiras-"+@meta_title
    @carreiras = Carreira.all(:order => :titulo)
  end

  def new
    @meta_title = "Nova Carreira-"+@meta_title
    @carreira = Carreira.new
     respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @carreira }
    end


  end
  
  def create
    @carreira = Carreira.create(params[:carreira])

    if @carreira.save
      flash[:notice] = "Carreira Cadastrada com Sucesso."
      redirect_to carreiras_path
    else
      flash[:error] = "Não foi possível cadastrar a carreira."
      redirect_to new_carreira_path
    end
  end

   def edit
    @carreira = Carreira.find(params[:id])
    @meta_title = "Editando carreira: "+@carreira.titulo+"-"+@meta_title
  end

  def update
    @carreira = Carreira.find(params[:id])
    if @carreira.update_attributes(params[:carreira])
      flash[:notice] = "Carreira Atualizada com Sucesso."
    else
      flash[:error] = "Erro ao atualizar a carreira."
    end
    redirect_to carreiras_path

  end

  def destroy
     @carreira = Carreira.find(params[:id])
    
    if @carreira.destroy
      flash[:notice] = "Carreira Excluida com Sucesso."
    redirect_to carreiras_path
    else
      flash[:error] = "Não foi possível excluir a carreira."
    redirect_to carreiras_path
    end

    
  end

    def show
    @carreira = Carreira.find(params[:id])
    @cursos = @carreira.cursos.find(:all, :order => :nome)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @noticia }
    end
  end
end
