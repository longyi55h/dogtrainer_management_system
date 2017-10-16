class OwnersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = User.find(current_user.id)
    @owners = @user.owners
  end
  
  def new
    @owner = current_user.owners.build if signed_in?
  end
  
  def create
    @owner = current_user.owners.build(owner_params)
    if @owner.save
      flash[:success] = "オーナー作成！"
      redirect_to '/owners'
    else
      render 'owners/new'
    end
  end
  
  def edit
    @owner = Owner.find(params[:id])
  end
  
  def update
    @owner = Owner.find(params[:id])
    if @owner.update_attributes(owner_params)
      flash[:success] = "オーナー編集！"
      redirect_to '/owners'
    else
      # render 'owners/"#{params[:id]}"/edit'
      render "edit"
    end
  end
  
  def destroy
  end
  
  private
  
    def owner_params
      params.require(:owner).permit(
        :owner_lastname, 
        :owner_firstname, 
        :owner_birthday, 
        :job, 
        :zipcode1, 
        :zipcode2, 
        :prefecture_code, 
        :city, 
        :street, 
        :phone_number1, 
        :phone_number2, 
        :phone_number3,
        :family1,
        :family2,
        :family3,
        :family4,
        :family5,
        :family1_birthday,
        :family2_birthday,
        :family3_birthday,
        :family4_birthday,
        :family5_birthday,
        :house_type,
        :house_floor,
        :main_manager,
        :notes)
    end
end