class AvatarsController < ApplicationController

  def new
    @avatar = Avatar.new
  end

  def create
  	@avatar = Avatar.new(avatar_params)
  	if @avatar.save
  		flash[:success] = "Stworzyłeś avatara!"
  		redirect_to avatar_path
  	else
  		render 'new'
  	end
  end

  def show
    @avatar = Avatar.find_by_id(params[:id])
    render no_avatar if @avatar.nil?
  end

  private

    def avatar_params
  	  params.require(:avatar).permit(:age, :height, :weight, :male, :activeness)
    end

end
