# # Base image: Ruby with necessary dependencies for Jekyll
# FROM ruby:3.2

# # Install dependencies
# RUN apt-get update && apt-get install -y \
#     build-essential \
#     nodejs \
#     && rm -rf /var/lib/apt/lists/*

# # Set the working directory inside the container
# WORKDIR /usr/src/app

# # Copy all necessary files into the container
# COPY . .

# # Install bundler and dependencies
# RUN gem install bundler:2.3.26 && bundle install

FROM bernardshen1230/homepage:latest

WORKDIR /usr/src/app

RUN rm -rf ./*

COPY . .

# Command to serve the Jekyll site
CMD ["bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "-w", "--config", "_config.yml"]
