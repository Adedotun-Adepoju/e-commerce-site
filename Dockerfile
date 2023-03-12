FROM ruby:3.2.1

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

# Set the working directory to /app
WORKDIR /app 

# Copy the Gemfile and Gemfile.lock from your application directory into the container
COPY Gemfile Gemfile.lock ./

# # Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Install gems
RUN bundle install 

# Copy the application code into the container
COPY . .

# Expose port 3000 to the Docker host, so we can access the application from outside the container
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]


