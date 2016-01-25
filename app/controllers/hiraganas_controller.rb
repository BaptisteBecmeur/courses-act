class HiraganasController < ApplicationController

# before_filter :authenticate_user!, except: [:index, :show]
# before_action :find_hiragana, only: [:show, :edit, :update, :destroy]

  def index
    @hiraganas = Hiragana.all
  end

  def show
    @hiragana = Hiragana.find(params[:id])
  end

  def new
    @hiragana =  Hiragana.new
  end

  def create
    @hiragana = Hiragana.new(hiragana_params)
    @hiragana.save
      redirect_to @hiragana
    # else
    #   render :new
  end

  def edit
    @hiragana = Hiragana.find(params[:id])
  end

  def update
     if @hiragana.update(hiragana_params)
      redirect_to @hiragana
    else
      render :edit
    end
  end

    def destroy
    @hiragana.destroy
    redirect_to :back
  end

  private

  # def find_hiragana
  #   @hiragana = Hiragana.find(params[:id])
  # end

  def hiragana_params
    params.require(:hiragana).permit(:ideoone, :ideotwo, :transcription, :upletter, :audioclick, :ideopix)
  end
end



