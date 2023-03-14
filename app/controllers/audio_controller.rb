require "google/cloud/storage"

class AudioController < ApplicationController
    skip_before_action :verify_authenticity_token

    def upload_audio 
        # Get the uploaded file from the params 
        audio_file = params[:audio_file]

        search_terms = SpeechTextConverter.call(audio_file)
        puts "key #{search_terms}"
        terms = search_terms.select{ |key, value| value == :NOUN}
        @key = terms.keys[0]
        puts @key
        puts "here"
        
        redirect_to search_item_path(key: 'shoe')
        return 
    end
end
