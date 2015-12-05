FROM rails:4.2.5

WORKDIR /usr/src/app

COPY ["Gemfile", "Gemfile.lock", "/usr/src/app/"]
RUN bundle install

COPY . /usr/src/app

EXPOSE 8080
CMD ["unicorn"]
