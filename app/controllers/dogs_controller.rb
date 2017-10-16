class DogsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @user = User.find(current_user.id)
        @dogs = @user.dogs
        @owners = @user.owners
        logger.debug @owners.inspect
    end
    
    def new
        @owner = Owner.find(params[:owner_id])
        @dog = @owner.dogs.build if signed_in?
    end
    
    def create
        @owner = Owner.find(params[:owner_id])
        @dog = @owner.dogs.build(dog_params)
        @dog.user_id = current_user.id
        @owner.dog_id = @dog.id
        if @dog.save && @owner.update_attributes(owner_params)
            flash[:success] = "ドッグ作成！"
            redirect_to '/dogs'
        else
            render 'dogs/new'
        end
    end
    
    def edit
        @owner = Owner.find(params[:owner_id])
        @dog = Dog.find(params[:id])
    end
    
    def update
        @dog = Dog.find(params[:id])
        if @dog.update_attributes(dog_params)
            flash[:success] = "ドッグ編集！"
            redirect_to '/dogs'
        else
            render 'edit'
        end
    end
    
    private
    
        def dog_params
            params.require(:dog).permit(
                :owner_id,
                :dog_name,
                :dog_breed,
                :dog_birthday,
                :dog_image_path,
                :food_type,
                :food_times,
                :favorite_snack1,
                :favorite_snack2,
                :favorite_snack3,
                :favorite_toy1,
                :favorite_toy2,
                :favorite_toy3,
                :dogwalk_times,
                :dogwalk_hours,
                :character1,
                :character2,
                :character3,
                :character4,
                :character5,
                :character6,
                :character7,
                :character8,
                :clinical_history1,
                :clinical_history2,
                :clinical_history3,
                :clinical_history4,
                :clinical_history5,
                :command_language,
                :basic_command1,
                :basic_command2,
                :basic_command3,
                :basic_command4,
                :basic_command5,
                :basic_command6,
                :applied_command1,
                :applied_command2,
                :applied_command3,
                :applied_command4,
                :applied_command5,
                :notes)
        end
        
        def owner_params
            params.require(:owner).permit(:owner_id)
        end

end
