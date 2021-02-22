Rails.application.routes.draw do
  root to: 'items#index'
 
  resources :items, except: [ :index] do
    collection do
    get "search"
    get "category_id"
    end
  end

  resources :categories, except: [ :destroy] do
    collection do
      get "search"
      get "category_id"
    end
  end

  resources :plans

  resources :fishes do
    collection do
      get "search"
    end
  end

  resources :checks do
  resources :choices
  end

end