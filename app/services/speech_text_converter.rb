require "google/cloud/storage"
require "google/cloud/speech/v2"
require "google/cloud/speech"
require "google/cloud/language"

class SpeechTextConverter
    def initialize(file)
        @file = file
    end

    def self.call(file)
        new(file).call
    end

    def call
        object_name = upload_to_gcs(@file)
        transcript = convert_to_text(object_name)
        puts transcript
        tokenize(transcript)
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

        request = ::Google::Cloud::Speech::V1::RecognizeRequest.new(
            config: {
                language_code: "en-us",
                encoding: :WEBM_OPUS,
                sample_rate_hertz: 48000, 
                model: "command_and_search",
                use_enhanced: true
            }, 
            audio: {
                uri: audio_uri                 
            })
        # response = speech.recognize config:config, audio: audio
        response = speech.recognize request

        transcript = ""
        response.results.each do |result|
            puts result
            transcript += result.alternatives[0].transcript
        end 

        return transcript
    end
    
    def tokenize(transcript) 
        project_id = ENV["PROJECT_ID"]
        credentials = ENV["GOOGLE_APPLICATION_CREDENTIALS"]
        # Create a new Cloud Natural Language API client instance
        client = Google::Cloud::Language.language_service

        Google::Cloud::Language.configure do |config|
            config.project_id = project_id
            config.credentials = credentials
        end

        document = { content: transcript, type: :PLAIN_TEXT }
        response = client.analyze_syntax document: document

        response.tokens.each do |token|
            puts "#{token.text.content}: #{token.part_of_speech.tag}"
        end
    end
end