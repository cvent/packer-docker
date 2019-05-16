FROM hashicorp/packer:1.4.1

# Install inspec
RUN apk --no-cache add --virtual build-dependencies ruby-dev build-base \
  && gem install --no-document inspec -v 3.9.3 \
  && apk del build-dependencies

# Inspec runtime dependencies
RUN apk --no-cache add ruby \
  ruby-etc \
  ruby-io-console \
  openssh-client
