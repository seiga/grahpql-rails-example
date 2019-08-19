FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y nodejs

ARG APP_HOME
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY ./Gemfile      Gemfile
COPY ./Gemfile.lock Gemfile.lock
RUN bundle install -j4
