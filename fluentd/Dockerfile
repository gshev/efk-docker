FROM fluent/fluentd:v0.14-onbuild

ENV ES_HOST="elasticsearch" ES_PORT="9200" ES_USER="elastic" ES_PASSWORD="changeme"

RUN apk add --update --virtual .build-deps \
        sudo build-base ruby-dev \

 # cutomize following instruction as you wish
 && sudo gem install fluent-plugin-secure-forward \
 && sudo gem install fluent-plugin-elasticsearch --pre \
 && sudo gem install fluent-plugin-record-modifier --pre \

 && sudo gem sources --clear-all \
 && apk del .build-deps \
 && rm -rf /var/cache/apk/* \
           /home/fluent/.gem/ruby/2.3.0/cache/*.gem

EXPOSE 24284
