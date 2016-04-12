class FacesController < ApplicationController

  def index
    @faces = Face.all
  end

  def edit
    @face = Face.find(params[:id])
  end

  def update
    @face = Face.update(params[:id], face_params)
    if @face.save
      redirect_to face_path(@face.id)
    else
    end
  end

  def destroy
    Face.destroy(params[:id])
    redirect_to faces_path
  end

  def new
    @face = Face.new
  end

  def create
    @face = Face.new(face_params)
    if @face.save
      redirect_to face_path(@face.id)
    else
    end
  end

  def show
    @face = Face.find(params[:id])
  end

  private

  def face_params
    params.require(:face).permit(:shape)
  end

end
