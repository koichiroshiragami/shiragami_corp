class TopController < ApplicationController

  def index
    @infos = Info.order("Created_at DESC")
  end

  def company
  end

  def staff
  end

  def link
  end

  def inquiry
  end

  def productlist
  end

end