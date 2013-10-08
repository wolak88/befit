class AvatarsController < ApplicationController

  def new
    @avatar = Avatar.new
  end

  def create
  	@avatar = Avatar.new(avatar_params)
  	if @avatar.save
  		flash[:success] = "Stworzyłeś avatara!"
  		redirect_to #
  	else
  		render 'new'
  	end
  end

  def show
  end

  private

    def avatar_params
  	  params.require(:avatar).permit(:age, :height, :weight, :male, :activeness)
    end

end
