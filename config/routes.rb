Wcms::Engine.routes.draw do
  get 'menus/:id/translation', to: 'menus#translation', as: 'menu_transaltion'
  post 'menus/:id/translation', to: 'menus#add_translation'
  resources :menus
  resources :sliders
  resources :text_blocks
  resources :image_blocks
end
