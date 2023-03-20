# README

This is a Ruby on Rails 6 app intended to work as a vice powered e-commerce site. It is built on top of the google natural language API. It allows users to search for products with voice. Follow the following steps to set up locally.

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
```sh
cd e-commerce
```
- Create an .env file to store your environment variables
```sh
touch .env
```

## Set up a Google cloud account
- Ensure you have an active google account with billing set up 
- Set up a project and add the project id to the .env file
```sh
PROJECT_ID="YOUR-PROJECT-ID"
```
- Create a GCS bucket
- Set your GCS bucket name in the .env file
```sh
GCS_BUCKET_NAME="YOUR-BUCKET-NAME-HERE"
```
- Create a gcs service account with admin privilieges for GCS
- Enable cloud-speech-api on google console 
- Create a service account for speech-to-text api. You can give this account a priviliege of admin
- Download the keys to the two service accounts. You can move your service accounts to the config/credentials directory. This directory has been configured in the gitignore file so you will need to create the credentials directory
- Add the path the service accounts in your .env file as show 
```sh
SPEECH_CREDENTIALS="config/credentials/<NAME OF SPEECH-TO-TEXT JSON FILE>"
GCS_CREDENTIALS="config/credentials/<NAME OF GCS JSON FILE>"
GOOGLE_APPLICATION_CREDENTIALS="config/credentials/gcs**.json"
```

## Docker 
- Ensure your docker daemon is running 

- Add to .env for postgres database configuration
```sh
HOST=database
POSTGRES_USER="Enter-db-username"
POSTGRES_PASSWORD="Enter-password"
POSTGRES_DB="commerce"
```
- Note: changing the host name will also mean you have to change the name of the postgres service in the docker-compose.yml file.

- Build the docker image
```sh
docker-compose build
```
- Start the docker container
```sh
docker-compose up -d
```
- Copy the container ID of the e-commerce image after running the command below
```sh
docker ps
```
- Run the seeder to prepopulate tables
```sh 
docker exec -it <container_name> rails db:seed
```
### Usage 
- Open [http://localhost:3000](http://localhost:3000) on your browser
- Click on the microphone icon beside the search bar to trigger the microphone and make a voice search for a product. For a start, you can search for products like shoe, phone. These products are in the seeded database
- Click on the microphone button again to stop recording
- Wait for some seconds to see the products available
- You can try other functionalities out also like adding items to the cart, searching products and logging in and out
