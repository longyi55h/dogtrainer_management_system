class DogkartesController < ApplicationController
  def index
    @dog = Dog.find(params[:dog_id])
    @owner = Owner.find(@dog.owner_id)
    @dogkartes = @dog.dogkartes
  end
  
  def show
    @dogkarte = Dogkarte.find(params[:id])
    @dog = Dog.find(@dogkarte.dog_id)
  end

  def new
    @dog = Dog.find(params[:dog_id])
    @dogkarte = Dogkarte.new(dog: @dog)
    # @dogkarte = @dog.dogkartes.build if signed_in?
    # @dogkarte = Dogkarte.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @dogkarte = @dog.dogkartes.build(dogkarte_params)
    @dogkarte.owner_id = @dog.owner_id
    if @dogkarte.save
      flash[:success] = 'カルテ登録！'
      redirect_to dog_dogkarte_path(@dog, @dogkarte)
    else
      flash[:error] = 'カルテ登録失敗！'
      render :new
    end
  end

  def edit
    @dog = Dog.find(params[:dog_id])
    @dogkarte = Dogkarte.find(params[:id])
  end

  def update
    @dogkarte = Dogkarte.find(params[:id])
    @dog = Dog.find(params[:dog_id])
    # @dogkarte = @dog.dogkartes.build(dogkarte_params)
    @dogkarte.owner_id = @dog.owner_id
    if @dogkarte.update_attributes(dogkarte_params)
      flash[:success] = 'カルテ編集！'
      redirect_to dog_dogkarte_path(@dog, @dogkarte)
    else
      flash[:error] = 'カルテ編集失敗！'
      render :edit
    end
  end

  def destroy
    @dogkarte = Dogkarte.find(params[:id])
    if @dogkarte.destroy
      flash[:success] = 'カルテ削除'
      redirect_to dog_dogkartes_path
    else
      flash[:error] = 'カルテ削除失敗！'
      render :index
    end
  end
  
  private
  
    def dogkarte_params
      params.require(:dogkarte).permit(
        :dog_id,
        :owner_id,
        :training_date,
        :training_session,
        :training_times,
        :training_status,
        :training_dogwalk_times,
        :training_dogwalk_hours,
        :training_detail,
        :training_image_path1,
        :training_image_path2,
        :training_image_path3,
        :training_image_path4,
        :training_image_path1_cache,
        :training_image_path2_cache,
        :training_image_path3_cache,
        :training_image_path4_cache)
    end
    
end
