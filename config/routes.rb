Rails.application.routes.draw do
  root to: 'items#index'
 
  resources :items do
    collection do
    get "search"
    get "category_id"
    end
  end

  resources :categories, only: [ :index, :new, :create] do
    collection do
      get "search"
      get "category_id"
    end
  end

  resources :plans

  resources :fishes,except: [ :new ] do
    collection do
      get "search"
    end
  end

  resources :checks, except: [ :edit, :update] do
  resources :choices,only: [:index, :new, :create]
  end

end