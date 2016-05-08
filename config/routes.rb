Rails.application.routes.draw do

  devise_for :users
  root to: "top#index"
  resources :products, :only => [:show]
  get   'productlist'   =>  "top#productlist"
  get   'infos/infolist'   =>  "infos#infolist"
  get   'infos/new'   =>  "infos#new"
  post   'infos'   =>  "infos#create"
  get   'company'   =>  "top#company"
  get   'staff'   =>  "top#staff"
  get   'link'   =>  "top#link"
  get   'inquiry'   =>  "top#inquiry"
  get   'myfiles/downloadpdf/:id'=> 'myfiles#downloadpdf' ,as: :download_pdf

end

