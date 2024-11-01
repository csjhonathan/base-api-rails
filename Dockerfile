FROM ruby:3.2.2

RUN \
    apt-get update -qq && apt-get install -y postgresql-client

ARG _workdir=/base-api-rails

WORKDIR ${_workdir}

COPY ./Gemfile ./Gemfile.lock ${_workdir}/
RUN bundle check || bundle install 

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-c", "config/puma.rb"]