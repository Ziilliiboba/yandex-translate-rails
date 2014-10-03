class YandexTranslateController < ApplicationController
  def index
    @user = current_user
  	@text_in = params[:text_in]
  	@text_out = self.translator.translate(@text_in)["text"][0]
  	@user.histories.create(before_translate: @text_in, after_translate: @text_out)
  end

protected

	def translator
		@translator ||= Yandex::Translate::Client.new('trnsl.1.1.20140807T122828Z.35ab4bfdb8a5e4a4.9e8b074565621ae60cfce08b8b092fa5db4b662a')
	end

end
