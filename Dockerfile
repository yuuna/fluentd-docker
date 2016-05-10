FROM fluent/fluentd:latest
USER root
RUN echo "gem: --user-install --no-document" >> ~/.gemrc
RUN apk --no-cache --update add build-base ruby-dev
USER fluent
WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.2.0/bin:$PATH
RUN fluent-gem install bigdecimal
