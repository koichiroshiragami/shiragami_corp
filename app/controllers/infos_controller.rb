class InfosController < ApplicationController

  before_action :move_to_infolist, except: :infolist

  def infolist
    @infos = Info.order("Created_at DESC")
  end

  def new
  end

  def create
    Info.create(info_params)
  end

    private
    def info_params
      params.permit(:title, :image, :text)
    end

  def move_to_infolist
    redirect_to action: :infolist unless user_signed_in?
  end

end