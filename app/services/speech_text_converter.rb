require "google/cloud/storage"
# require "google/cloud/speech"

class SpeechTextConverter
    def initialize(file)
        @file = file
    end

    def self.call(file)
        new(file).call
    end

    def call
        file_url = upload_to_gcs(@file)
        puts "here #{file_url}"
    end

    private 

    def upload_to_gcs(audio_file)
        project_id = ENV["PROJECT_ID"]
        credentials = ENV["GCS_CREDENTIALS"]
        bucket = ENV["GCS_BUCKET_NAME"]

        #Initialize a google cloud storage with the service account JSON file
        storage = Google::Cloud::Storage.new(
            project_id: project_id,
            credentials: credentials
        )
        # Set the name of the object in ht ebucket
        object_name = "audio/#{SecureRandom.uuid}.mp3"

        # upload the file to the bucket
        bucket = storage.bucket bucket, skip_lookup: true
        file = bucket.create_file(audio_file.tempfile, object_name)
        return file.public_url
    end

    def save_reference(object_name, url) end
end