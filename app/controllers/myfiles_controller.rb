class MyfilesController < ApplicationController
  def downloadpdf
    info=Info.find(params[:id])
    filepath = Rails.root.join("public/#{info.file}")
    send_file(filepath)
  end
end
