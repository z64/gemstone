FROM ruby:2.4.1-slim-stretch

# Install dev tools for ffi, etc.
RUN apt-get update && apt-get install -y --no-install-recommends ruby-dev g++ make

RUN mkdir /opt/gemstone

COPY Gemfile /opt/gemstone/
COPY . /opt/gemstone

WORKDIR /opt/gemstone
RUN bundle install

CMD ["ruby", "run.rb"]
