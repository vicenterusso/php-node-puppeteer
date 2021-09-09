FROM vicenterusso/php-fpm:7.4.21

LABEL maintainer="Vicente Russo <vicente.russo@gmail.com>"

USER root

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt-get install -y \ 
  nodejs \
  gconf-service \
  libasound2 \
  libatk1.0-0 \
  libc6 \
  libcairo2 \
  libcups2 \
  libdbus-1-3 \
  libexpat1 \
  libfontconfig1 \
  libgcc1 \
  libgconf-2-4 \
  libgdk-pixbuf2.0-0 \
  libglib2.0-0 \
  libgtk-3-0 \
  libnspr4 \
  libpango-1.0-0 \
  libpangocairo-1.0-0 \
  libstdc++6 \
  libx11-6 \
  libx11-xcb1 \
  libxcb1 \
  libxcomposite1 \
  libxcursor1 \
  libxdamage1 \
  libxext6 \
  libxfixes3 \
  libxi6 \
  libxrandr2 \
  libxrender1 \
  libxss1 \
  libxtst6 \
  libgbm-dev \
  ca-certificates \
  fonts-liberation \
  libappindicator1 \
  libnss3 \
  lsb-release \
  xdg-utils

ADD ./install.sh /var/install/

RUN ["chmod", "+x", "/var/install/install.sh"]

RUN /var/install/install.sh

USER www
