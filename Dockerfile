FROM ruby:3.3

COPY . /app

WORKDIR /app

RUN bundle

EXPOSE 3000

# ENTRYPOINT "rackup -r./main config.ru -p 3000"
CMD ["rackup","-r./app/main","config.ru","-p","3000"]
