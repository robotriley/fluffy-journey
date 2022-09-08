Rails.application.routes.draw do
  
  get '/vendors', to: 'vendors#index'
  get '/vendors/:id', to: 'vendors#show'

  get '/sweets', to: 'sweets#index'
  get '/sweets/:id', to: 'sweets#show'

  post '/vendor_sweets', to: 'vendorsweets#create'

  delete '/vendor_sweets', to: 'vendorsweets#destroy'
end
