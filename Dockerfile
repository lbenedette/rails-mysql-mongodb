FROM ruby:2.7.1

RUN apt-get update -y \
 && apt-get install -y -q \
    build-essential \
    ca-certificates \
    libpq-dev \
    default-mysql-client \
    vim \
    htop \
 && apt-get clean \
 && rm -f /var/lib/apt/lists/*_*

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y nodejs && npm install

RUN mkdir /two
WORKDIR /two

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock

RUN bundle install

COPY . .

EXPOSE 3001

ENV RAILS_ENV development

ENTRYPOINT ["sh", "./entrypoint.sh"]
