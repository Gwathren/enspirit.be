FROM phusion/passenger-ruby23

# I'm the maintainer!
MAINTAINER blambeau@enspirit.be

# Set correct environment variables and workdir
ENV HOME /home/app
WORKDIR /home/app

# Install a few handy tools
RUN apt-get update && \
    apt-get install -y vim && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install nginx configuration & start it
RUN rm -f /etc/service/nginx/down && \
    rm /etc/nginx/sites-enabled/default && \
    mkdir -p /etc/nginx/sites-available/ && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log
ADD config/env.conf /etc/nginx/main.d/env.conf
ADD config/website.conf /etc/nginx/sites-available/
ADD config/website.conf /etc/nginx/sites-enabled/

# Install dependencies through bundler
COPY Gemfile Gemfile.lock /home/app/
RUN cd /home/app && bundle install

# Install the app
ADD . /home/app
RUN chown -R app:app /home/app

# Build the assets
RUN bundle exec rake test
RUN bundle exec rake assets:compile

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]
