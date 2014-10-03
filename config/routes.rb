YandexTranslate::Application.routes.draw do
  post "/log_in", :controller => 'sessions', :action => 'index', :as => 'log_in'
  get "/log_in", :controller => 'sessions', :action => 'index', :as => 'log_in_get'
  get '/account', :controller => 'users', :action => 'new', :as => 'users'
  post '/account', :controller => 'users', :action => 'create', :as => 'account'
  get "users/index"
  get "/translator" , :controller => 'yandex_translate', :action => 'index', :as => 'translate'
  post "/translator" , :controller => 'yandex_translate', :action => 'index', :as => 'translator'
  post '/', :controller => 'user_session', :action => 'create', :as => 'user_session'

  root 'user_session#new', :as => 'user_sessions'
end
