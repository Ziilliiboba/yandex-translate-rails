YandexTranslate::Application.routes.draw do
  post "/log_in", :controller => 'sessions', :action => 'index', :as => 'log_in'
  get "/log_in", :controller => 'sessions', :action => 'index', :as => 'log_in_get'
  post '/registration', :controller => 'users', :action => 'index', :as => 'registration'
  get "users/index"
  post "/" , :controller => 'yandex_translate', :action => 'index', :as => 'translate'

  root 'yandex_translate#index'
end
