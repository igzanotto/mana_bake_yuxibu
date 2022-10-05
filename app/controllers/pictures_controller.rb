class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.where(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   authorize @assistant
  # end

  # def update
  #   authorize @assistant
  #   if @assistant.update(assistant_params)
  #     redirect_to assistant_path(@assistant)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  def destroy
    @picture = Picture.where(params[:id])
    @picture.destroy
    redirect_to chatrooms_path
  end

  private

  def picture_params
    params.require(:picture).permit(:detail, :photo)
  end

end
