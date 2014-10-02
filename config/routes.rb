YandexTranslate::Application.routes.draw do
  post "/log_in", :controller => 'sessions', :action => 'index', :as => 'log_in'
  get "/log_in", :controller => 'sessions', :action => 'index', :as => 'log_in_get'
  get '/account', :controller => 'users', :action => 'new', :as => 'account'
  get "users/index"
  post "/translator" , :controller => 'yandex_translate', :action => 'index', :as => 'translate'
  post '/', :controller => 'user_session', :action => 'create', :as => 'user_session'

  root 'user_session#new', :as => 'user_sessions'
end
