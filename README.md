# README

This is a Ruby on Rails 6 app intended to work as a vice powered e-commerce site. It is built on top of the google natural language API. It allows users to search for products with voice. Follow the following steps to set up locally and if yiu want to try a live demo, you can try it out here.

### Tools 
- Framework: Ruby on  Rails 6
- Database: Postgres
- Cloud provider: GCP
- Data lake: Google Cloud storage
- NLP model: Google Cloud speech api
- Tokenizer: Google cloud language

# :rocket: Features
- List categories
- View products in categories
- Search products
- Search products with voice
- Add products to Cart

# :construction_worker: How to run 
## Clone the repo

```sh
git clone https://github.com/Adedotun-Adepoju/e-commerce-site.git e-commerce
```

- Create an .env file to store your environment variables

## Set up a Google cloud account
- Ensure you have an active google account with billing set up 
- Set up a project and add the project id to the .env file
```sh
PROJECT_ID="YOUR-PROJECT-ID"
```
- Create a GCS bucket
- Set your GCS bucket in your .env file
```sh
GCS_BUCKET_NAME="YOUR-BUCKET-NAME-HERE"
```
- Create a gcs service account with admin privilieges for GCS
- Enable cloud-speech-api on google console 
- Create a service account for speech-to-text api. You can give this account a priviliege of admin
- Download the keys to the two service accounts. You can move your service accounts to the config/credentials directory. This directory has been configured in the gitignore file so you will need to create the credentials directory
- Add the path the service accounts in your .env file as show 
```sh
SPEECH_CREDENTIALS="config/credentials/speech***.json"
GCS_CREDENTIALS="config/credentials/gcs**.json"
GOOGLE_APPLICATION_CREDENTIALS="config/credentials/gcs**.json"
```

## Docker 
- Ensure your docker daemon is running 
```sh
cd e-commerce
```
- Build the docker image
```sh
docker build
```