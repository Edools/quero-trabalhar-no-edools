class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course, notice: "Curso criado com sucesso."
    else
      flash[:alert] = "Erro ao criar o curso."
      render "new"
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  private

  def course_params
    params.require(:course).permit(:titulo,:escola_id,:descricao,:duracao,:data_criacao,:alunos_ativos,:preco)
  end
end
