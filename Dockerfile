FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

COPY my_app .

RUN apt-get update
RUN apt-get install -y \
    wget \
    libcanberra-gtk-module \
    libcanberra-gtk3-module
RUN apt-get clean

RUN cd /tmp && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -y ./google-chrome-stable_current_amd64.deb

WORKDIR //my_app

CMD ["python","my_app.py"]
