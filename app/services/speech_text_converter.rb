require "google/cloud/storage"
require "google/cloud/speech/v2"
require "google/cloud/speech"

class SpeechTextConverter
    def initialize(file)
        @file = file
    end

    def self.call(file)
        new(file).call
    end

    def call
        object_name = upload_to_gcs(@file)
        convert_to_text(object_name)
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
        return object_name
    end

    def convert_to_text(object_name) 
        project_id = ENV["PROJECT_ID"]
        credentials = ENV["SPEECH_CREDENTIALS"]
        bucket = ENV["GCS_BUCKET_NAME"]       

        speech = Google::Cloud::Speech.speech
        audio_uri = "gs://#{bucket}/#{object_name}"
        puts audio_uri
        config = {
            language_code: "en-us",
            encoding: :FLAC,
        }
        audio = { 
            uri: audio_uri 
        }
        request = ::Google::Cloud::Speech::V1::RecognizeRequest.new(
            config: {
                language_code: "en-us",
                encoding: :LINEAR16,
            }, 
            audio: {
                uri: audio_uri                 
            })
        # response = speech.recognize config:config, audio: audio
        response = speech.recognize request
        puts "res #{response}"

        transcript = "a"
        response.results.each do |result|
            puts result
            transcript += result.alternatives[0].transcript
        end 

        puts "here"

        puts "transcript, #{transcript}"
    end
    
    def save_reference(object_name, url) 
    
    end
end