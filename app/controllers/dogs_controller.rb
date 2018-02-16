class DogsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @user = User.find(current_user.id)
    end
    
    def show
        @dog = Dog.find(params[:id])
    end
    
    def new
        @dog = Dog.new
        @dog.build_owner
    end
    
    def create
        @dog = Dog.new(dog_params)
        @dog.owner.user_id = current_user.id
        @dog.user_id = current_user.id
        if @dog.save
            flash[:success] = 'ドッグ作成！'
            redirect_to dog_path(@dog)
        else
            flash[:error] = 'ドッグ作成失敗！'
            render 'dogs/new'
        end
    end
    
    def edit
        @dog = Dog.find(params[:id])
    end
    
    def update
        @dog = Dog.find(params[:id])
        if @dog.update_attributes(dog_params)
            flash[:success] = 'ドッグ編集！'
            redirect_to dog_path
        else
            flash[:error] = 'ドッグ編集失敗！'
            render 'edit'
        end
    end
    
    def destroy
        @dog = Dog.find(params[:id])
        if @dog.destroy
            flash[:success] = 'ドッグ削除！'
            redirect_to dogs_path
        else
            flash[:error] = 'ドッグ削除失敗！'
            render dogs_path
        end
    end
    
    private
    
        def dog_params
            params.require(:dog).permit(
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
                :notes,
                :dog_image_path,
                :dog_image_path_cache,
                owner_attributes: [:id, :owner_firstname, :owner_lastname]
                )
        end
        
        def owner_params
            params.require(:owner).permit(:owner_id)
        end

end
