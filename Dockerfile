FROM ruby:2.7.3

WORKDIR /app

# Using Node.js v14.x(LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -

# Add packages
RUN apt-get update && apt-get install -y \
	git \
	nodejs \
	vim \
	default-mysql-client 

# Add yarnpkg for assets:precompile
RUN npm install -g yarn