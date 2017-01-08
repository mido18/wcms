Wcms::Engine.routes.draw do
  get 'menus/:id/translation', to: 'menus#translation', as: 'menu_transaltion'
  post 'menus/:id/translation', to: 'menus#add_translation'
  resources :menus
  resources :sliders
  get  'text_blocks/:id/translation', to: 'text_blocks#translation', as: 'text_block_transaltion'
  post 'text_blocks/:id/translation', to: 'text_blocks#add_translation'
  resources :text_blocks
  resources :image_blocks
end
