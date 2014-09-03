require 'yandex-translate'

class YandexTranslateController < ApplicationController
	def initialize
		@translator = Yandex::Translate::Client.new('trnsl.1.1.20140807T122828Z.35ab4bfdb8a5e4a4.9e8b074565621ae60cfce08b8b092fa5db4b662a')
	end

  def index
  	@text_in = params[:text_in]
  	@text_out = @translator.translate(params[:text_in])["text"][0]
  end
end
