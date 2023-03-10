require "google/cloud/storage"

class AudioController < ApplicationController
    skip_before_action :verify_authenticity_token
    def upload_audio 
        #Initialize a google cloud storage with the service account JSON file
        project_id = ENV["PROJECT_ID"]
        credentials = ENV["GCS_CREDENTIALS"]

        storage = Google::Cloud::Storage.new(
            project_id: project_id,
            credentials: credentials
        )
        puts project_id
        # Get the uploaded file from the params
    end
end
