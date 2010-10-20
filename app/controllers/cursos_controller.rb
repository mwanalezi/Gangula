class CursosController < ApplicationController
  def index
    @meta_title = "Listagem de Cursos-"+@meta_title
    @cursos = Curso.all
  end

  def new
    @meta_title = "Novo Curso-"+@meta_title
    @curso = Curso.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @curso }
    end


  end

  def create
    @curso = Curso.create(params[:curso])

    if @curso.save
      flash[:notice] = "Curso Cadastrado com Sucesso."
      redirect_to cursos_path
    else
      flash[:error] = "Não foi possível cadastrar o Curso."
      redirect_to new_curso_path
    end
  end

  def edit
    @curso = Curso.find(params[:id])
    @meta_title = "Editando curso: "+@curso.nome+"-"+@meta_title
  end

  def update
    @curso = Curso.find(params[:id])
    if @curso.update_attributes(params[:curso])
      flash[:notice] = "Curso Atualizado com Sucesso."
    else
      flash[:error] = "Erro ao atualizar o curso."
    end
    redirect_to cursos_path

  end

  def destroy
    @curso = Curso.find(params[:id])
    if @curso.destroy
      flash[:notice] = "Curso Excluido com Sucesso."
    else
      flash[:error] = "Não foi possível excluir curso"
    end
    redirect_to cursos_path
  end

  def show
    @curso = Curso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @curso }
    end
  end

end
