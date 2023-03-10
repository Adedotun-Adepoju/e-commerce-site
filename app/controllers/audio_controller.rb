require "google/cloud/storage"

class AudioController < ApplicationController
    skip_before_action :verify_authenticity_token
    def upload_audio 
        # Get the uploaded file from the params 
        audio_file = params[:audio_file]

        SpeechTextConverter.call("audio_file", )

        # Return a response
        render json: { success: true }
    end
end
