# app/controllers/contents_controller.rb
class ContentsController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]
  before_action :set_content, only: [ :show, :edit, :update, :destroy ]

  def index
    @contents = Content.all
  end

  def show
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to @content, notice: "Contenido creado exitosamente."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @content.update(content_params)
      redirect_to @content, notice: "Contenido actualizado con éxito."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @content.destroy
    redirect_to contents_path, notice: "Contenido eliminado con éxito."
  end

  private

  def set_content
    @content = Content.find(params[:id])
  end

  def content_params
    params.require(:content).permit(:title, :description, :image, :video)
  end
end
