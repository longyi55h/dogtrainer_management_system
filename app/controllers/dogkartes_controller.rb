class DogkartesController < ApplicationController
  def index
    @dog = Dog.find(params[:dog_id])
    @owner = Owner.find(@dog.owner_id)
    @dogkartes = @dog.dogkartes
  end

  def new
    @dog = Dog.find(params[:dog_id])
    @owner = Owner.find(@dog.owner_id)
    @dogkarte = @dog.dogkartes.build if signed_in?
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @dogkarte = @dog.dogkartes.build(dogkarte_params)
    @dogkarte.owner_id = @dog.owner_id
    if @dogkarte.save
      flash[:success] = 'カルテ登録！'
      redirect_to dog_dogkartes_path
    else
      render new_dog_dogkarte_path
    end
  end

  def edit
    @dog = Dog.find(params[:dog_id])
    @owner = Owner.find(@dog.owner_id)
    @dogkarte = Dogkarte.find(params[:id])
  end

  def update
    @dogkarte = Dogkarte.find(params[:id])
    if @dogkarte.update_attributes(dogkarte_params)
      flash[:success] = "カルテ編集！"
      redirect_to dog_dogkartes_path
    else
      render edit_dog_dogkarte_path
    end
  end

  def destroy
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
        :training_image)
    end
end
