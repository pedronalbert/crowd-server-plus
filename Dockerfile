FROM ruby:2.3.1

RUN apt-get update

ARG APP_PATH=/app

RUN mkdir $APP_PATH
WORKDIR $APP_PATH

COPY Gemfile* ./
RUN bundle install --retry=3

COPY . .

CMD rails s
