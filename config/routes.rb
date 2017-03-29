Rails.application.routes.draw do
    get "/offers/list", to:"offers#list",as: 'list_offer'
  resources :requests
  resources :offers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




  get "/offers/:id/aprobado", to:"offers#aprobado",as: 'approb_offer'
  get "/offers/:id/no_aprobado", to:"offers#no_aprobado",as: 'non_approb_offer'
  get "/offers/:id/autorizado", to:"offers#autorizado",as: 'authotized_offer'
  get "/offers/:id/no_autorizado", to:"offers#no_autorizado",as: 'non_authotized_offer'
  get "/offers/:id/subido", to:"offers#subido",as: 'upload_offer'
  get "/offers/:id/monetizado", to:"offers#monetizado",as: 'monetized_offer'
  get "/offers/:id/afiliado", to:"offers#afiliado",as: 'afiliate_offer'
  get "/offers/:id/stop", to:"offers#stop",as: 'stop_offer'






end
