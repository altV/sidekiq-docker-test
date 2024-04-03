FROM ruby:3.3

COPY . /app

WORKDIR /app

RUN bundle

EXPOSE 3000

# ENTRYPOINT "rackup -r./main config.ru -p 3000"
CMD ["bin/launch_web","-o","0.0.0.0"]
