FROM naturalselect/x11pod:latest
LABEL "Maintainer"="NaturalSelect<2145973003@qq.com>"
RUN apt-get update
RUN apt-get install -y build-essential clang libdbus-1-dev libgtk2.0-dev \
                libnotify-dev libgconf2-dev \
                libasound2-dev libcap-dev libcups2-dev libxtst-dev \
                libxss1 libnss3-dev gcc-multilib g++-multilib wget unzip libdrm-dev libgbm1
RUN rm -rf /var/lib/apt/lists/*