FROM ruby:2.6

RUN apt-get update
RUN apt-get install -y nodejs

RUN gem install bundler

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

ENV NOKOGIRI_USE_SYSTEM_LIBRARIES 1
RUN bundle install


# Install Yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.19.1 && \
  ln -sf $HOME/.yarn/bin/yarn /usr/local/bin/yarn && \
  ln -sf $HOME/.yarn/bin/yarnpkg /usr/local/bin/yarnpkg
  
COPY . /app
RUN yarn install

EXPOSE 8080

ENTRYPOINT bundle exec rails s