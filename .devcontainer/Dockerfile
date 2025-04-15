FROM ruby:3.2

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    git \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user
RUN useradd -m -s /bin/bash vscode

# Set the working directory
WORKDIR /workspace
COPY Gemfile .

# Install bundler
RUN gem install bundler:2.3.26 && bundle install

# Switch to non-root user
USER vscode

# Expose Jekyll port
EXPOSE 4000 