FROM ruby:3.2.1

# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
#     echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
#     apt-get update && \
#     apt-get install -y nodejs yarn=1.22.23 postgresql-client && \
#     rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y nodejs yarn>=1 postgresql-client && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory to /app
WORKDIR /app 

# Copy the Gemfile and Gemfile.lock from your application directory into the container
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install 

# Copy the application code into the container
COPY . .

# Expose port 3000 to the Docker host, so we can access the application from outside the container
EXPOSE 3000

# # # Start the Rails server
# CMD ["rails", "server", "-b", "0.0.0.0"]

# # Add docker entry point
COPY docker-entrypoint.sh .

RUN chmod +x docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh" ]

