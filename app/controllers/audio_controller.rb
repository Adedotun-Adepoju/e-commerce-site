# require "google/cloud/storage"

class AudioController < ApplicationController
    skip_before_action :verify_authenticity_token
    def upload_audio 
        #Initialize a google cloud storage with the service account JSON file
        puts ENV.keys
        puts ENV.fetch("GCS_CREDENTIALS")
    end
end
