YandexTranslate::Application.routes.draw do
  post "/" , :controller => 'yandex_translate', :action => 'index', :as => 'translate'

  root 'yandex_translate#index'
end
