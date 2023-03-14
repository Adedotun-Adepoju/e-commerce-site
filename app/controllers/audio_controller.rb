require "google/cloud/storage"

class AudioController < ApplicationController
    skip_before_action :verify_authenticity_token

    def upload_audio 
        # Get the uploaded file from the params 
        audio_file = params[:audio_file]

        words = SpeechTextConverter.call(audio_file)
        
        # select only words that are nouns
        noun_terms = words.select{ |key, value| value == :NOUN}
        @key = terms.keys[0]
        
        redirect_to search_item_path(key: key)
        return 
    end
end
