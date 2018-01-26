Rails.application.routes.draw do
  root to: 'quests#index'

  get 'quests/show'

  get 'quests/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
