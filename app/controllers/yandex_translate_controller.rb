require 'yandex-translate'

class YandexTranslateController < ApplicationController
  def index
  	#@translator 
  	#Yandex::Translate::Client.new('trnsl.1.1.20140807T122828Z.35ab4bfdb8a5e4a4.9e8b074565621ae60cfce08b8b092fa5db4b662a')
  end

  def new
  end

  def create
  	render plain: params[:translator].inspect
  end

  def translate
  	translator = Yandex::Translate::Client.new(params[:key])
  	render text: translator.translate(params[:text])["text"][0]
  end
end
