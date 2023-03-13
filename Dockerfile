FROM ruby:3.2.1

# Set the working directory to /app
WORKDIR /app 

# Copy the Gemfile and Gemfile.lock from your application directory into the container
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install 

# Copy the application code into the container
COPY . ./

# Expose port 3000 to the Docker host, so we can access the application from outside the container
EXPOSE 3000

# # Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]

# # Add docker entry point
# ADD docker-entrypoint.sh /app/

# RUN chmod +x /app/docker-entrypoint.sh

# ENTRYPOINT [ "/app/docker-entrypoint.sh" ]

