class OwnersController < ApplicationController
  def show
    # @user = User.find(params[:id])
    @user = User.find(1)
    @owners = @user.owners
  end
end