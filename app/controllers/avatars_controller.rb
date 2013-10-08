class AvatarsController < ApplicationController

  def new
    @avatar = Avatar.new
  end

  def create
  	@avatar = Avatar.new(params)
  	if @avatar.save
  		flash[:success] = "Stworzyłeś avatara!"
  		redirect_to #
  	else
  		render 'new'
  	end
  end

end
