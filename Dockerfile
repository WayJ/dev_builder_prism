FROM alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk update \
    && apk add nodejs \
    && apk add npm \
    && apk add yarn \
    && apk add git \
    && apk add 'python<3'\
    && npm config set sass_binary_site https://npm.taobao.org/mirrors/node-sass/ \
    && npm i -g nrm \
    && nrm add tianque http://223.4.69.11:4873/ \
    && nrm use tianque \
    && npm i -g @tq-prism/cli --unsafe-perm \
    && tq-prism -V
