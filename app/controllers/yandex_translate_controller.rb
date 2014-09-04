#require 'yandex-translate'

class YandexTranslateController < ApplicationController
  def index
  	@text_in = params[:text_in]
  	@history = History.create(before_translate: @text_in, after_translate: self.translator.translate(@text_in)["text"][0])
  	@histories = History.all

  	@text_out = self.translator.translate(params[:text_in])["text"][0]
  	#render text: @histories.map{ |i| "bf: #{i.before_translate} af:#{i.after_translate}"}.join("<br/>")
  end


protected

	def translator
		@translator ||= Yandex::Translate::Client.new('trnsl.1.1.20140807T122828Z.35ab4bfdb8a5e4a4.9e8b074565621ae60cfce08b8b092fa5db4b662a')
	end

end
