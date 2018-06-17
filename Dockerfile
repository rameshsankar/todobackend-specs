FROM node:alpine
MAINTAINER Ramesh Sankar <ramesh.sankar@gmail.com>

COPY . /app
WORKDIR /app

# Install application dependencies
RUN npm install -g mocha && \
	npm install

# Set mocha test runner as entrypoint
ENTRYPOINT ["mocha"]