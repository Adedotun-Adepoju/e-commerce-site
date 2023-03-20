require "google/cloud/storage"

class AudioController < ApplicationController
    skip_before_action :verify_authenticity_token

    # Action to upload audio to GCS and translate. Calls the SpeechTextConverter Service
    def upload_audio 
        # Get the uploaded file from the params 
        audio_file = params[:audio_file]

        words = SpeechTextConverter.call(audio_file)
        
        # select only words that are nouns
        noun_terms = words.select{ |key, value| value == :NOUN}
        key = noun_terms.keys[0]

        # Show all products if there is no text identified
        if key == nil 
           return redirect_to search_item_path(key: "")  
        end
        
        redirect_to search_item_path(key: key)
        return 
    end
end
